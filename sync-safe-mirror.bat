@echo off
cd /d "%~dp0"
setlocal

set "SAFE_DIR=%USERPROFILE%\Desktop\birthday-firework-safe"
if not exist "%SAFE_DIR%" mkdir "%SAFE_DIR%"

copy /y "%~dp0birthday-firework.html" "%SAFE_DIR%\birthday-firework.html" >nul || exit /b 1
copy /y "%~dp0README.md" "%SAFE_DIR%\README.md" >nul || exit /b 1
copy /y "%~dp0run-browser.bat" "%SAFE_DIR%\run-browser.bat" >nul || exit /b 1
copy /y "%~dp0run-live-server.bat" "%SAFE_DIR%\run-live-server.bat" >nul || exit /b 1
copy /y "%~dp0run-birthday-firework.bat" "%SAFE_DIR%\run-birthday-firework.bat" >nul || exit /b 1
copy /y "%~dp0sync-safe-mirror.bat" "%SAFE_DIR%\sync-safe-mirror.bat" >nul || exit /b 1
copy /y "%~dp0set-html-association-chrome.bat" "%SAFE_DIR%\set-html-association-chrome.bat" >nul || exit /b 1

exit /b 0
