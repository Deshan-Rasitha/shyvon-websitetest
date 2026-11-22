@echo off
title SHYVON - 1-Click Push to GitHub
color 0b

echo ========================================================
echo     SHYVON LUXURY ORGANIC E-COMMERCE
echo       1-Click Push to Your GitHub Repository
echo ========================================================
echo.
echo All 82 files are already committed to local Git!
echo.
echo 1. Open https://github.com/new in your browser.
echo 2. Create a repository named "shyvon-website" (Public or Private).
echo 3. Copy the URL (e.g. https://github.com/yourname/shyvon-website.git)
echo.
set /p REPO_URL="Paste your GitHub Repository URL here: "

if "%REPO_URL%"=="" (
    echo No URL provided.
    pause
    exit /b
)

for /f "delims=" %%i in ('powershell -NoProfile -Command "(Get-ChildItem -Path \"$env:LOCALAPPDATA\GitHubDesktop\" -Filter \"git.exe\" -Recurse | Select-Object -First 1).FullName"') do set GIT_EXE="%%i"

if not defined GIT_EXE (
    set GIT_EXE=git
)

echo Using Git at: %GIT_EXE%

%GIT_EXE% remote remove origin 2>nul
%GIT_EXE% remote add origin %REPO_URL%
%GIT_EXE% branch -M main

echo.
echo Pushing to GitHub...
%GIT_EXE% push -u origin main

echo.
echo ========================================================
echo Done! Check your repository on GitHub.
echo Now you can connect it to Render.com with 1 click!
echo ========================================================
pause
