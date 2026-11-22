@echo off
setlocal enabledelayedexpansion
title SHYVON - Local Production Server

echo =====================================================================
echo           SHYVON - PREMIUM SRI LANKAN NATURAL FOODS
echo              Pure - Healthy - Delicious E-Commerce
echo =====================================================================
echo.

cd /d "%~dp0"

:: Check if node_modules exists
if not exist "node_modules\" (
    echo [NOTICE] Dependencies not detected. Running INSTALL-SHYVON.bat first...
    call INSTALL-SHYVON.bat
)

:: Check if database exists
if not exist "prisma\dev.db" (
    echo [NOTICE] Database not initialized. Synchronizing database...
    call npx.cmd prisma db push
    node prisma/seed.js
)

echo Starting SHYVON Web Application...
echo.
echo =====================================================================
echo   Customer Website:   http://localhost:3000
echo   Admin Dashboard:    http://localhost:3000/admin
echo   Default Admin:      admin@shyvon.com (Passkey: shyvon2026)
echo =====================================================================
echo.
echo Press Ctrl+C in this terminal window or run STOP-SHYVON.bat to shut down.
echo.

:: Launch the application
call npx.cmd next dev -p 3000
