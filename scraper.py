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

# MO report endpoint (discovered from the Apex web app's network traffic)
API_URL = "https://app.apextrading.com/b-api/brand-company/orders"

# The distributor whose orders we pull. ID + name come straight from the
# request payload you captured in the Network tab.
DISTRIBUTOR_ID = int(os.getenv("APEX_DISTRIBUTOR_ID", "6267"))
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


def main():
    payload = fetch_report()
    OUTPUT_FILE.write_text(json.dumps(payload, indent=2, default=str))
    print(f"Saved → {OUTPUT_FILE}")


if __name__ == "__main__":
    main()
