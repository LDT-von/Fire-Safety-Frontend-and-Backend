@echo off
chcp 65001 >nul

echo ================================
echo Checking Your Branches
echo ================================
echo.

cd FireSafe_admin\FireSafe_admin_frontend-main

echo Current directory: %CD%
echo.

echo 1. Current branch:
git branch
echo.

echo 2. All branches (local and remote):
git branch -a
echo.

echo 3. Recent commits on current branch:
git log --oneline -5
echo.

echo 4. Checking for uncommitted changes:
git status --porcelain
echo.

echo 5. Checking if there are any stashed changes:
git stash list
echo.

echo ================================
echo Analysis:
echo - If you see other branches, you can switch to them
echo - If you see stashed changes, you can restore them
echo - Your current changes are safe
echo ================================
echo.
pause

