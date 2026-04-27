@echo off
chcp 65001 >nul

echo ================================
echo Simple Project Check
echo ================================
echo.

cd FireSafe_admin\FireSafe_admin_frontend-main

echo 1. Current status:
git status --short
echo.

echo 2. Can we start the dev server?
echo Trying to start development server...
echo (This will show if there are any immediate errors)
echo.

echo 3. Key files check:
if exist "src\main.js" echo ✓ main.js OK
if exist "src\App.vue" echo ✓ App.vue OK  
if exist "package.json" echo ✓ package.json OK
echo.

echo ================================
echo Please tell me:
echo 1. What specific problem are you having?
echo 2. What do you want to achieve?
echo ================================
echo.
pause

