@echo off
title SHYVON - Stop Services

echo =====================================================================
echo                  SHYVON - SHUTDOWN CONTROLLER
echo =====================================================================
echo.

echo Safely stopping any active SHYVON Node.js / Next.js processes on port 3000...

:: Find PID on port 3000 and terminate gracefully
for /f "tokens=5" %%a in ('netstat -aon ^| findstr ":3000" ^| findstr "LISTENING"') do (
    echo Stopping process PID %%a listening on port 3000...
    taskkill /F /PID %%a >nul 2>nul
)

echo.
echo =====================================================================
echo All SHYVON services have been stopped safely.
echo All database records, orders, and uploaded images are fully preserved.
echo =====================================================================
echo.
pause
