@echo off
cd /d "%~dp0"
echo ========================================
echo   Starting Dev Server
echo ========================================
echo Project: %CD%
echo.
if not exist "node_modules" (
    echo Installing dependencies...
    call npm install
)
echo.
echo Starting server...
echo Server will be available at: http://localhost:5000
echo Press Ctrl+C to stop
echo ========================================
echo.
call npm run dev
pause
