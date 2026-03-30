@echo off
cd /d "%~dp0"
setlocal

call "%~dp0sync-safe-mirror.bat"
if errorlevel 1 exit /b 1

set "CHROME=C:\Program Files\Google\Chrome\Application\chrome.exe"
set "EDGE=C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
set "SAFE_FILE=%USERPROFILE%\Desktop\birthday-firework-safe\birthday-firework.html"

if exist "%CHROME%" (
  start "" "%CHROME%" --new-window "%SAFE_FILE%"
  goto :eof
)

if exist "%EDGE%" (
  start "" "%EDGE%" --new-window "%SAFE_FILE%"
  goto :eof
)

start "" "%SAFE_FILE%"
