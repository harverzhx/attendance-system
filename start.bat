@echo off
title Attendance System Server
cd /d "C:\Users\Administrator\OneDrive\Desktop\OldCode UpdateEcommerce\Automated School Gate Attendance\attendance-system"
taskkill /f /im php.exe >nul 2>&1
taskkill /f /im cloudflared.exe >nul 2>&1
timeout /t 2 /nobreak >nul
if exist tunnel_url.txt del /f tunnel_url.txt 2>nul
echo Starting PHP server...
set JWT_SECRET=F6fZ450YwDWlSayr7B1spAPh9RvdetOXUHIxEobnim2uCKVTNM3Qcq8JLkgzGj
start /B C:\xampp\php\php.exe -S 0.0.0.0:8000 router.php
timeout /t 2 /nobreak >nul
echo Starting Cloudflare Tunnel...
start /B cmd /c "..\cloudflared.exe tunnel --url http://localhost:8000 > tunnel_url.txt 2>&1"
echo Waiting for tunnel URL (this may take 10-20 seconds)...
:wait
if not exist tunnel_url.txt goto wait
powershell -NoProfile -Command "if (!(Select-String -Path tunnel_url.txt -Pattern 'https://[a-z0-9-]+\.trycloudflare\.com' -Quiet)) { exit 1 }"
if errorlevel 1 (
    timeout /t 2 /nobreak >nul
    goto wait
)
for /f "tokens=*" %%a in ('powershell -NoProfile -Command "(Select-String -Path tunnel_url.txt -Pattern 'https://[a-z0-9-]+\.trycloudflare\.com' | Select-Object -First 1).Matches.Value"') do set TUNNEL_URL=%%a
echo.
echo ============================================
echo Local:    http://localhost:8000
echo Tunnel:   %TUNNEL_URL%
echo ============================================
echo.
echo Close this window to stop all servers.
start "" "%TUNNEL_URL%"
pause
taskkill /f /im php.exe >nul 2>&1
taskkill /f /im cloudflared.exe >nul 2>&1
