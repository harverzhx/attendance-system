@echo off
cd /d "%~dp0"
echo Running UI Tests (Playwright)...
echo.
call npm test
echo.
if %ERRORLEVEL% EQU 0 (
    echo All UI tests passed!
) else (
    echo Some UI tests failed. Check details above.
)
pause
