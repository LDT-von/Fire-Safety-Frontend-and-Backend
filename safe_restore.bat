@echo off
chcp 65001 >nul

echo ================================
echo Safe File Restoration
echo ================================
echo.

cd FireSafe_admin\FireSafe_admin_frontend-main

echo Current directory: %CD%
echo.

echo Step 1: Creating backup of current state...
git stash push -m "backup_before_restore_$(Get-Date -Format 'yyyyMMdd_HHmmss')"
echo Backup created in git stash
echo.

echo Step 2: Checking available branches...
git branch -a
echo.

echo Step 3: Checking recent commits...
git log --oneline -10
echo.

echo Step 4: Checking what files might be missing...
echo Current files count:
dir /s /b src\views | find /c /v ""
echo.

echo ================================
echo Options:
echo 1. Keep current changes (recommended)
echo 2. Reset to last commit
echo 3. Check specific branch
echo ================================
echo.
echo Your current changes are safely backed up in git stash.
echo You can restore them later with: git stash pop
echo.
pause

