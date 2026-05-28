@echo off
REM Chill Medicated - Missouri - one-click runner (Windows)
REM Pulls fresh data, starts a local server, and opens the dashboard.

cd /d "%~dp0"

echo Pulling Missouri sales data from Apex...
python scraper.py
if errorlevel 1 (
  echo.
  echo Scraper failed - check the message above ^(cookie expired or wrong account ids^).
  pause
  exit /b 1
)

set PORT=8000
echo Starting local server on http://localhost:%PORT% ...
start "Apex MO server" cmd /c "python -m http.server %PORT%"

REM Give the server a moment, then open the dashboard
timeout /t 2 /nobreak >nul
start "" "http://localhost:%PORT%/dashboard.html"

echo.
echo Dashboard opened in your browser.
echo Close the "Apex MO server" window to stop the server.
pause
