@echo off
chcp 65001 >nul

echo ================================
echo Restarting Development Server
echo ================================
echo.

cd FireSafe_admin\FireSafe_admin_frontend-main

echo Current directory: %CD%
echo.

echo Step 1: Stopping any running processes...
taskkill /f /im node.exe 2>nul
echo.

echo Step 2: Clearing npm cache...
npm cache clean --force
echo.

echo Step 3: Reinstalling dependencies...
npm install
echo.

echo Step 4: Starting development server...
echo Please wait for the server to start...
echo.
npm run dev

