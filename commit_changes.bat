@echo off
chcp 65001 >nul

echo ================================
echo Committing Changes
echo ================================
echo.

cd FireSafe_admin\FireSafe_admin_frontend-main

echo Current directory: %CD%
echo.

echo Step 1: Adding modified files...
git add src/views/OwnerUnitManagement/MaintenancePlan.vue
echo.

echo Step 2: Committing changes...
git commit -m "修复维保计划管理页面：删除不应该存在的设置按钮"
echo.

echo Step 3: Checking status...
git status
echo.

echo ================================
echo Changes committed successfully!
echo ================================
echo.
pause

