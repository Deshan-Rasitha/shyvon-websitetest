@echo off
title SHYVON - Ultra Fast Ngrok Preview Launcher
color 0a

echo ========================================================
echo     SHYVON LUXURY ORGANIC E-COMMERCE
echo       Ultra-Fast Local Preview Launcher (Ngrok)
echo ========================================================
echo.
echo Ngrok provides fiber-optic speeds (< 1s load time) with 
echo direct Singapore/Tokyo edge servers.
echo.
echo If you have not added your free Ngrok token yet, get it free from:
echo https://dashboard.ngrok.com/get-started/your-authtoken
echo.
set /p TOKEN="Paste your Ngrok Authtoken (or press Enter if already configured): "
if not "%TOKEN%"=="" (
    call npx ngrok config add-authtoken %TOKEN%
)

echo.
echo Launching local server and starting high-speed tunnel...
start "SHYVON Server" /min node node_modules\next\dist\bin\next start -p 3000
timeout /t 2 >nul

call npx ngrok http 3000

pause
