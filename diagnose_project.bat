@echo off
chcp 65001 >nul

echo ================================
echo Project Diagnosis
echo ================================
echo.

cd FireSafe_admin\FireSafe_admin_frontend-main

echo 1. Checking Git Status...
git status
echo.

echo 2. Checking for recent changes...
git log --oneline -5
echo.

echo 3. Checking if node_modules exists...
if exist "node_modules" (
    echo ✓ node_modules exists
) else (
    echo ✗ node_modules missing - need to run npm install
)
echo.

echo 4. Checking package.json...
if exist "package.json" (
    echo ✓ package.json exists
) else (
    echo ✗ package.json missing
)
echo.

echo 5. Checking main files...
if exist "src\main.js" (
    echo ✓ main.js exists
) else (
    echo ✗ main.js missing
)

if exist "src\App.vue" (
    echo ✓ App.vue exists
) else (
    echo ✗ App.vue missing
)

if exist "src\router\index.js" (
    echo ✓ router exists
) else (
    echo ✗ router missing
)
echo.

echo 6. Checking for syntax errors in key files...
echo Checking MaintenancePlan.vue...
findstr /n "error\|Error\|ERROR" src\views\OwnerUnitManagement\MaintenancePlan.vue
echo.

echo ================================
echo Diagnosis Complete
echo ================================
echo.
echo If you see any missing files or errors above,
echo you may need to:
echo 1. Run: git pull --tags origin main
echo 2. Run: npm install
echo 3. Run: npm run dev
echo.
pause

