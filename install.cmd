@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

echo ============================================
echo   Installing myip-win...
echo ============================================

set TARGET_DIR=%USERPROFILE%\myip-win
set BASE_URL=https://raw.githubusercontent.com/eldosha/myip-project/main/myip-win/install.cmd


echo Installing to: %TARGET_DIR%
if not exist "%TARGET_DIR%" mkdir "%TARGET_DIR%"

echo Downloading myip.ps1...
curl -s -o "%TARGET_DIR%\myip.ps1" "%BASE_URL%/myip.ps1"

echo Downloading myip.cmd...
curl -s -o "%TARGET_DIR%\myip.cmd" "%BASE_URL%/myip.cmd"

echo.
echo Installation complete.
echo.
echo To enable 'myip' globally, add this folder to your PATH:
echo   %TARGET_DIR%
echo.
echo Steps:
echo   1) Open "Environment Variables"
echo   2) Edit "Path"
echo   3) Add: %TARGET_DIR%
echo.
echo After that, open a new CMD or PowerShell and run: myip
echo.

ENDLOCAL
