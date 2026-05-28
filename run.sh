#!/usr/bin/env bash
# Chill Medicated · Missouri — one-click runner (macOS/Linux)
# Pulls fresh data, starts a local server, and opens the dashboard.
set -e

cd "$(dirname "$0")"

echo "→ Pulling Missouri sales data from Apex..."
python3 scraper.py

PORT=8000
echo "→ Starting local server on http://localhost:$PORT ..."
python3 -m http.server "$PORT" &
SERVER_PID=$!

# Give the server a second to come up, then open the dashboard
sleep 1
URL="http://localhost:$PORT/dashboard.html"
if command -v open >/dev/null 2>&1; then
  open "$URL"            # macOS
elif command -v xdg-open >/dev/null 2>&1; then
  xdg-open "$URL"        # Linux
else
  echo "Open this in your browser: $URL"
fi

echo "→ Dashboard running. Press Ctrl+C to stop the server."
# Stop the background server when this script is interrupted
trap "kill $SERVER_PID 2>/dev/null" EXIT
wait $SERVER_PID
