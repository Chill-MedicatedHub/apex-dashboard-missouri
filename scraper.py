"""
Apex Trading — Brand Distributors Order Report Scraper (Missouri / MO)
----------------------------------------------------------------------
Pulls the "Brand Distributors Order Report" from Apex Trading using your
active browser session cookie. Saves the result as sales_data.json for the
dashboard.

NOTE: This is the MO-style report, which uses a DIFFERENT endpoint and a
much simpler payload than the MA "All Product Sales Report". It posts a
{ distributor, status } body to /b-api/brand-company/orders and gets back
a bare JSON array of order line items.

USAGE:
    1. Set APEX_COOKIE in .env (or GitHub Secrets). See README.md.
    2. Run:  python scraper.py
    3. Output: ./sales_data.json  (the dashboard reads this)
"""

import json
import os
import sys
import urllib.parse
from datetime import datetime, timezone
from pathlib import Path

import requests
from dotenv import load_dotenv

# ----------------------------------------------------------------------------
# Configuration
# ----------------------------------------------------------------------------
load_dotenv()


def _int_env(name: str, default: int) -> int:
    """Read an int from the environment, tolerating missing OR blank values.
    GitHub Actions injects unset secrets as '', which int('') would crash on."""
    raw = os.getenv(name, "")
    raw = raw.strip() if isinstance(raw, str) else raw
    try:
        return int(raw)
    except (TypeError, ValueError):
        return default


# MO report endpoint (discovered from the Apex web app's network traffic)
API_URL = "https://app.apextrading.com/b-api/brand-company/orders"

# The distributor whose orders we pull. ID + name come straight from the
# request payload you captured in the Network tab.
DISTRIBUTOR_ID = _int_env("APEX_DISTRIBUTOR_ID", 6267)
DISTRIBUTOR_NAME = os.getenv(
    "APEX_DISTRIBUTOR_NAME",
    "Green Four Ventures dba CLOVR or Red Dart Ventures dba Cultur",
)
DISTRIBUTOR_SLUG = os.getenv("APEX_DISTRIBUTOR_SLUG", "clovr-cannabis")

# Which order statuses to pull. The Apex dropdown offers "Open" (in-progress,
# recent) and "Completed" (finished — the bulk of sales history). Pull both so
# the dashboard isn't limited to current open orders. Comma-separated; add any
# other statuses the dropdown shows (e.g. "Cancelled") if you want them too.
STATUSES = [s.strip() for s in os.getenv("APEX_STATUSES", "Open,Completed").split(",") if s.strip()]

# The session cookie from your logged-in browser. NEVER commit this to git.
COOKIE = os.getenv("APEX_COOKIE", "")

OUTPUT_FILE = Path(__file__).parent / "sales_data.json"

# --- Current inventory pull -------------------------------------------------
# MO uses a distributor-scoped inventory endpoint (different from MA's):
#   GET /b-api/brand-company/inventory/{distributor_id}   (company header 7663)
# It's the "brand-distributor inventory" report. Response shape is captured on
# the first run (_inventory_debug) so the quantity fields can be confirmed.
INVENTORY_URL = f"https://app.apextrading.com/b-api/brand-company/inventory/{DISTRIBUTOR_ID}"
PULL_INVENTORY = os.getenv("APEX_PULL_INVENTORY", "1") == "1"
# MO's Apex company (from the captured current-company-id header). Overridable.
COMPANY_ID = _int_env("APEX_COMPANY_ID", 7663)
BRAND_ID = _int_env("APEX_BRAND_ID", 2500)
BRAND_NAME = os.getenv("APEX_BRAND_NAME", "Chill Medicated")
# Candidate quantity fields (locked on first run from the debug sample).
INV_QTY_FIELDS = [f.strip() for f in os.getenv(
    "APEX_INV_QTY_FIELDS",
    "total_batch_quantity,available,available_quantity,quantity,on_hand,on_hand_quantity,inventory_quantity,total_quantity,stock"
).split(",") if f.strip()]
# First run writes a small _inventory_debug blob so the shape can be confirmed.
INV_DEBUG = os.getenv("APEX_INV_DEBUG", "1") == "1"


# ----------------------------------------------------------------------------
# Build the request payload (mirrors what the Apex MO UI sends)
# ----------------------------------------------------------------------------
def build_payload(status: str) -> dict:
    """Construct the JSON body the orders endpoint expects.

    The MO report sends the whole distributor object plus a status string.
    We only strictly need id/name/slug, but we include the same fields the
    UI sends to stay close to a real request.
    """
    return {
        "distributor": {
            "id": DISTRIBUTOR_ID,
            "name": DISTRIBUTOR_NAME,
            "slug": DISTRIBUTOR_SLUG,
            "products_count": 0,
            "out_of_stock": 0,
            "logoLink": None,
            "vendorBannerLink": None,
            "servicesBannerLink": None,
            "onFleetEnabled": False,
        },
        "status": status,
    }


# ----------------------------------------------------------------------------
# Main pull
# ----------------------------------------------------------------------------
def extract_xsrf_token(cookie_str: str) -> str:
    """
    Apex uses Laravel-style CSRF protection: the XSRF-TOKEN cookie value must
    be sent back as the X-XSRF-TOKEN header (URL-decoded once).
    """
    for part in cookie_str.split(";"):
        part = part.strip()
        if part.startswith("XSRF-TOKEN="):
            raw = part[len("XSRF-TOKEN="):]
            return urllib.parse.unquote(raw)
    return ""


def fetch_report() -> dict:
    if not COOKIE:
        print("ERROR: APEX_COOKIE is empty.")
        print("Set your session cookie in .env or GitHub Secrets. See README.md.")
        sys.exit(1)

    xsrf = extract_xsrf_token(COOKIE)
    if not xsrf:
        print("WARNING: No XSRF-TOKEN found in your cookie string.")
        print("Make sure you copied the ENTIRE Cookie value, including the")
        print("'XSRF-TOKEN=...' part. Re-grab the cookie and try again.")
        sys.exit(1)

    print(f"Pulling MO orders for distributor {DISTRIBUTOR_ID} (statuses: {', '.join(STATUSES)})...")

    headers = {
        "Accept": "application/json",
        "Content-Type": "application/json",
        "Origin": "https://app.apextrading.com",
        "Referer": "https://app.apextrading.com/reports/brand-distributors-order-report",
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/131.0.0.0 Safari/537.36"
        ),
        "Cookie": COOKIE,
        "X-XSRF-TOKEN": xsrf,
        "X-Requested-With": "XMLHttpRequest",
    }

    def _extract_rows(data):
        if isinstance(data, list):
            return data
        if isinstance(data, dict):
            return data.get("data") or data.get("orders") or data.get("reportData") or []
        return []

    all_rows = []
    per_status = {}
    seen = set()
    for status in STATUSES:
        try:
            resp = requests.post(API_URL, json=build_payload(status), headers=headers, timeout=60)
        except requests.RequestException as e:
            print(f"ERROR: network failure — {e}")
            sys.exit(1)

        if resp.status_code in (401, 403):
            print(f"ERROR: Apex rejected the request (status {resp.status_code}).")
            print("Your session cookie has likely expired. Log into Apex in your")
            print("browser, copy a fresh Cookie value into .env, and re-run.")
            sys.exit(1)
        if resp.status_code == 419:
            print("ERROR: CSRF token mismatch (status 419).")
            print("Re-grab a fresh Cookie value from a request you JUST ran in the")
            print("Apex UI, update it, and re-run.")
            sys.exit(1)
        if resp.status_code != 200:
            print(f"ERROR: status {resp.status_code} for status '{status}': {resp.text[:300]}")
            sys.exit(1)

        rows = _extract_rows(resp.json())
        # Dedupe across statuses by a line-level key (an order is in one status,
        # but this guards against any overlap).
        new = 0
        for r in rows:
            key = (str(r.get("order")), r.get("product_name"), r.get("batch_name"),
                   str(r.get("quantity")), str(r.get("order_price")))
            if key in seen:
                continue
            seen.add(key)
            all_rows.append(r)
            new += 1
        per_status[status] = new
        print(f"  status '{status}': {len(rows)} rows ({new} new) | total {len(all_rows)}")

    print(f"Fetched {len(all_rows)} rows across {len(STATUSES)} statuses: {per_status}")

    return {
        "fetched_at": datetime.now(timezone.utc).isoformat(),
        "distributor_id": DISTRIBUTOR_ID,
        "statuses": STATUSES,
        "per_status_counts": per_status,
        "row_count": len(all_rows),
        "rows": all_rows,
    }


def _inv_num(v):
    """Coerce a possibly-stringy numeric value to float, else None."""
    if v is None or isinstance(v, bool):
        return None
    if isinstance(v, (int, float)):
        return float(v)
    if isinstance(v, dict):
        for k in ("value", "amount", "quantity", "qty"):
            if k in v:
                return _inv_num(v[k])
        return None
    try:
        s = str(v).replace(",", "").replace("$", "").strip()
        return float(s) if s not in ("", "-") else None
    except (TypeError, ValueError):
        return None


def _name_of(v):
    if isinstance(v, dict):
        return v.get("name") or v.get("label") or v.get("title") or ""
    return v or ""


def _pick(row, fields):
    for f in fields:
        if f in row and row[f] is not None:
            v = _inv_num(row[f])
            if v is not None:
                return v, f
    return None, None


def fetch_inventory(xsrf: str) -> dict:
    """Pull MO's distributor-scoped inventory:
        GET /b-api/brand-company/inventory/{DISTRIBUTOR_ID}  (company header).
    Response shape is unconfirmed, so this captures a debug sample and extracts
    quantities defensively. Never raises into the sales pull."""
    headers = {
        "Accept": "application/json",
        "Origin": "https://app.apextrading.com",
        "Referer": "https://app.apextrading.com/reports/brand-distributor-inventory",
        "User-Agent": ("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 "
                       "(KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"),
        "Cookie": COOKIE,
        "X-XSRF-TOKEN": xsrf,
        "X-Requested-With": "XMLHttpRequest",
        "current-company-id": str(COMPANY_ID),
    }
    try:
        resp = requests.get(INVENTORY_URL, headers=headers, timeout=60)
    except requests.RequestException as e:
        print(f"  inventory: network error ({e}); skipping.")
        return {"by_name": {}, "by_sku": {}, "catalog": [], "debug": None}
    if resp.status_code in (401, 403, 419):
        print(f"  inventory: status {resp.status_code} (company {COMPANY_ID}, distributor "
              f"{DISTRIBUTOR_ID}). Check APEX_COMPANY_ID. Skipping (sales unaffected).")
        return {"by_name": {}, "by_sku": {}, "catalog": [], "debug": None}
    if resp.status_code != 200:
        print(f"  inventory: status {resp.status_code}; skipping. {resp.text[:200]}")
        return {"by_name": {}, "by_sku": {}, "catalog": [], "debug": None}
    data = resp.json()

    # Locate the product list across plausible shapes.
    items = data if isinstance(data, list) else None
    if items is None and isinstance(data, dict):
        for k in ("data", "inventory", "products", "results", "rows", "items"):
            v = data.get(k)
            if isinstance(v, list):
                items = v
                break
            if isinstance(v, dict):
                for k2 in ("data", "results", "rows", "products"):
                    if isinstance(v.get(k2), list):
                        items = v[k2]
                        break
                if items is not None:
                    break
    items = items or []

    debug = None
    if INV_DEBUG:
        debug = {
            "top_level_type": type(data).__name__,
            "top_level_keys": sorted(data.keys()) if isinstance(data, dict) else None,
            "item_count": len(items),
            "first_item": items[0] if items else None,
        }

    by_name, by_sku, catalog, seen = {}, {}, [], set()
    qty_field, hits = None, 0
    for it in items:
        if not isinstance(it, dict):
            continue
        name = it.get("name") or it.get("product_name") or it.get("product") or ""
        if isinstance(name, dict):
            name = name.get("name") or ""
        sku = str(it.get("product_sku") or it.get("sku") or "").strip()
        line = (it.get("product_category_short_display_name") or it.get("product_category")
                or it.get("product_type_name") or it.get("category") or "")
        qty, qf = _pick(it, INV_QTY_FIELDS)
        if qf and not qty_field:
            qty_field = qf
        listed = bool(it.get("list_to_buyers")) and not bool(it.get("archived")) \
            if ("list_to_buyers" in it or "archived" in it) else True
        nbatch = len(it.get("batches")) if isinstance(it.get("batches"), list) else 0
        if qty is not None:
            hits += 1
            if name:
                by_name[name] = qty
            if sku:
                by_sku[sku] = qty
        key = sku or name
        if key and key not in seen:
            seen.add(key)
            catalog.append({"name": name or "—", "sku": sku, "line": _name_of(line),
                            "qty": qty, "listed": listed, "batches": nbatch})

    if catalog:
        print(f"Inventory: {len(items)} rows; {len(catalog)} catalog entries "
              f"({hits} with qty via '{qty_field}'; company {COMPANY_ID}).")
        if hits == 0:
            print(f"  WARNING: no quantity field matched {INV_QTY_FIELDS}. "
                  f"See _inventory_debug.first_item to set APEX_INV_QTY_FIELDS.")
    else:
        print(f"  inventory: no products parsed (company {COMPANY_ID}). See _inventory_debug.")
    return {"by_name": by_name, "by_sku": by_sku, "catalog": catalog, "debug": debug}


def main():
    payload = fetch_report()

    if PULL_INVENTORY:
        print("Pulling current inventory...")
        try:
            inv = fetch_inventory(extract_xsrf_token(COOKIE))
        except Exception as e:
            print(f"  inventory pull errored ({e}); continuing without it.")
            inv = {"by_name": {}, "by_sku": {}, "catalog": [], "debug": None}
        # MO sales rows have product_name (no sku), so stamp by name best-effort.
        by_name = inv["by_name"]
        if by_name:
            stamped = 0
            for r in payload["rows"]:
                nm = r.get("product_name") or ""
                if nm and nm in by_name:
                    r["current_inventory"] = by_name[nm]
                    stamped += 1
            print(f"  Stamped current_inventory on {stamped} of {len(payload['rows'])} rows (by name).")
        payload["inventory"] = inv["catalog"]
        if INV_DEBUG and inv.get("debug"):
            payload["_inventory_debug"] = inv["debug"]

    OUTPUT_FILE.write_text(json.dumps(payload, indent=2, default=str))
    print(f"Saved → {OUTPUT_FILE}")


if __name__ == "__main__":
    main()
