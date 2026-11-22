@echo off
setlocal enabledelayedexpansion
title SHYVON - Installation and Setup Wizard

echo =====================================================================
echo           SHYVON - PREMIUM SRI LANKAN NATURAL FOODS
echo             Full-Stack E-Commerce Local Setup Wizard
echo =====================================================================
echo.

cd /d "%~dp0"

:: 1. Check Node.js
echo [1/6] Verifying Node.js installation...
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Node.js is not installed or not found in system PATH.
    echo Please install Node.js v18 or later from https://nodejs.org/
    pause
    exit /b 1
)
for /f "tokens=*" %%v in ('node -v') do set NODE_VER=%%v
echo       Found Node.js %NODE_VER%

:: 2. Check npm.cmd
echo [2/6] Verifying npm package manager...
where npm.cmd >nul 2>nul
if %errorlevel% neq 0 (
    where npm >nul 2>nul
    if %errorlevel% neq 0 (
        echo [ERROR] npm was not found. Please reinstall Node.js.
        pause
        exit /b 1
    )
    set NPM_CMD=npm
) else (
    set NPM_CMD=npm.cmd
)
echo       Found npm command runner.

:: 3. Prepare Environment Configuration (.env)
echo [3/6] Checking environment configuration (.env)...
if not exist ".env" (
    if exist ".env.example" (
        copy /Y ".env.example" ".env" >nul
        echo       Created .env from .env.example
    ) else (
        echo [WARNING] .env.example not found. Creating default .env...
        echo DATABASE_URL="file:./dev.db" > .env
        echo NEXT_PUBLIC_SITE_URL="http://localhost:3000" >> .env
        echo NEXTAUTH_SECRET="shyvon_secret_jwt_2026" >> .env
        echo DEV_ADMIN_PIN="shyvon2026" >> .env
        echo ADMIN_EMAILS="admin@shyvon.com" >> .env
    )
) else (
    echo       .env file is present.
)

:: 4. Install Dependencies
echo [4/6] Installing dependencies (this may take a minute)...
call %NPM_CMD% install
if %errorlevel% neq 0 (
    echo [ERROR] Dependency installation encountered errors.
    pause
    exit /b 1
)
echo       Dependencies installed successfully.

:: 5. Generate Prisma Client & Database
echo [5/6] Preparing database schema and generating Prisma client...
call npx.cmd prisma generate
if %errorlevel% neq 0 (
    echo [ERROR] Prisma generation failed.
    pause
    exit /b 1
)
call npx.cmd prisma db push
if %errorlevel% neq 0 (
    echo [ERROR] Database synchronization failed.
    pause
    exit /b 1
)
echo       Database initialized and synchronized.

:: 6. Seed Initial Data
echo [6/6] Seeding initial database data (Organic Dried Blue Lotus Petals)...
node prisma/seed.js
if %errorlevel% neq 0 (
    echo [WARNING] Seeding returned an error or database was already seeded.
) else (
    echo       Database seeded successfully!
)

echo.
echo =====================================================================
echo                SHYVON INSTALLATION COMPLETE!
echo =====================================================================
echo.
echo You can now run START-SHYVON.bat to launch the application.
echo.
echo Customer Storefront:  http://localhost:3000
echo Admin Portal:         http://localhost:3000/admin
echo Admin Passkey:        shyvon2026
echo.
pause
