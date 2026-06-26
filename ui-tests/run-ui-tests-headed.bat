@echo off
cd /d "%~dp0"
echo Running UI Tests (HEADED) - Makita nimo ang browser nga ga-click2!
echo.
echo Mag-open ang Chrome ug mag-run ang tests isa-isa.
echo.
set HEADED=true
call npx playwright test --headed --reporter=list
echo.
if %ERRORLEVEL% EQU 0 (
    echo All UI tests passed!
) else (
    echo Some UI tests failed. Check details above.
)
pause
