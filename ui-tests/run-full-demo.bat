@echo off
cd /d "%~dp0"
echo ============================================================
echo FULL DEMONSTRATION - ALL ROLES ALL PAGES (HEADED)
echo ============================================================
echo.
echo Mag-open ang Chrome ug mag-test sa TANANG pages para sa:
echo   - Admin (17 pages)
echo   - Teacher (7 pages)
echo   - Staff (3 pages)
echo   - Viewer (2 pages)
echo   - Parent (4 pages)
echo.
echo Total: 33 page visits nga magpakita og cursor arrow nga
echo nag-click hinay-hinay aron kita sa naglantaw.
echo.
set HEADED=true
call npx playwright test tests/all-roles-test.spec.js --headed --reporter=list
echo.
if %ERRORLEVEL% EQU 0 (
    echo ALL TESTS PASSED!
) else (
    echo Some tests failed. Check details above.
)
pause
