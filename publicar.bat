@echo off
REM ============================================================
REM  ASTROZABAL-WEB - publicar.bat
REM  Doble clic cada vez que cambies o anadas algo en la web.
REM  Sube los cambios a GitHub y Vercel publica solo en 1 minuto.
REM ============================================================
cd /d "%~dp0"
echo ============================================
echo   ASTROZABAL-WEB - publicar
echo ============================================
echo.
git status --short
echo.
set /p mensaje="Mensaje (Intro para usar fecha/hora): "
if "%mensaje%"=="" set mensaje=Web %date% %time%
git add -A
git commit -m "%mensaje%"
git push
echo.
echo Listo. En un minuto estara en https://astrozabal-web.vercel.app
start "" "https://vercel.com/astrozabal"
pause
