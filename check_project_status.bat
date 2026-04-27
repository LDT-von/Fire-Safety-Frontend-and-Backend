@echo off
chcp 65001 >nul

echo ================================
echo Checking Project Status
echo ================================
echo.

echo Checking Frontend Project...
cd FireSafe_admin\FireSafe_admin_frontend-main
echo Current directory: %CD%
echo.

echo Git Status:
git status
echo.

echo Checking for missing files...
if not exist "src\main.js" (
    echo WARNING: src\main.js is missing!
)
if not exist "src\App.vue" (
    echo WARNING: src\App.vue is missing!
)
if not exist "package.json" (
    echo WARNING: package.json is missing!
)
echo.

echo Checking node_modules...
if not exist "node_modules" (
    echo WARNING: node_modules folder is missing!
    echo You may need to run: npm install
) else (
    echo node_modules exists
)
echo.

echo ================================
echo Status Check Complete
echo ================================
echo.
pause

