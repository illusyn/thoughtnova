@echo off
cd /d "%~dp0"
git add .
git diff --cached --quiet
if %errorlevel%==0 (
    echo Nothing to commit.
    pause
    exit /b
)
git commit -m "Update site"
git push
echo.
echo Deployed. Wait ~1 minute, then hard refresh.
pause