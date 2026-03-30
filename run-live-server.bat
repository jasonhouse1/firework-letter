@echo off
cd /d "%~dp0"
setlocal

set "CHROME=C:\Program Files\Google\Chrome\Application\chrome.exe"
set "EDGE=C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
set "URL=http://127.0.0.1:5501/birthday-firework.html"

if exist "%CHROME%" (
  start "" "%CHROME%" --new-window "%URL%"
  goto :eof
)

if exist "%EDGE%" (
  start "" "%EDGE%" --new-window "%URL%"
  goto :eof
)

start "" "%URL%"
