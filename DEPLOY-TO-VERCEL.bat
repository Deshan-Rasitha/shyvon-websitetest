@echo off
title SHYVON - Deploy to Free High-Speed Vercel Cloud
color 0b

echo ========================================================
echo     SHYVON LUXURY ORGANIC E-COMMERCE
echo       100%% Free High-Speed Cloud Hosting (Vercel)
echo ========================================================
echo.
echo Vercel gives you:
echo  - Ultra-fast global CDN hosting (under 0.5s load time)
echo  - 100%% free forever (Hobby Plan)
echo  - A permanent HTTPS link (e.g. shyvon.vercel.app)
echo  - 24/7 uptime even when your PC is turned off
echo.
echo Press any key to log in and deploy to Vercel...
pause >nul

echo.
echo Starting Vercel deployment...
call npx vercel --prod

echo.
echo ========================================================
echo Deployment completed!
echo Check the URL generated above to view your live store.
echo ========================================================
pause
