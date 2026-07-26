@echo off
title SW Kohinoor Biryani - Git Auto Updater
cls
echo ========================================================
echo         SW Kohinoor Biryani - Git Update Script
echo ========================================================
echo.

echo Checking repository status...
git status
echo.

echo Adding all changed and new files...
git add .
echo.

set /p msg="Enter commit message (Press Enter for default: 'Update website'): "
if "%msg%"=="" set msg=Update website

echo.
echo Committing changes with message: "%msg%"
git commit -m "%msg%"

echo.
echo Pushing changes to GitHub (https://github.com/rajsubhajit554-cloud/SW-Kohinoor-biryani.git)...
git push origin main

echo.
echo ========================================================
echo          Git repository updated successfully!
echo ========================================================
echo.
pause
