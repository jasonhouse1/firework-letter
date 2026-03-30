@echo off
cd /d "%~dp0"
setlocal

set "REG_PATH=HKCU\Software\Classes\htmlfile\shell\open\command"
set "REG_VALUE=\"C:\Program Files\Google\Chrome\Application\chrome.exe\" --single-argument \"%1\""

C:\Windows\System32\reg.exe add "%REG_PATH%" /ve /t REG_SZ /d "%REG_VALUE%" /f

if errorlevel 1 (
  echo Failed to update current user HTML association.
  exit /b 1
)

echo HTML association updated for current user.
