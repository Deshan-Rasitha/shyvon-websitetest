@echo off
title SHYVON - Live Public Cloud Preview Launcher
color 06

echo ===================================================
echo     SHYVON LUXURY ORGANIC E-COMMERCE
echo       Live Public Cloud Preview Launcher
echo ===================================================
echo.
echo Launching local production server and creating a 
echo free secure HTTPS Cloudflare public preview link...
echo.

node "%~dp0scripts\preview-tunnel.js"

pause
