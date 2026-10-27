@echo off
REM ============================================================
REM  ASTROZABAL-WEB - primera-vez.bat  (SOLO UNA VEZ)
REM  Conecta esta carpeta con el repositorio ASTROZABAL-WEB de
REM  GitHub (que tienes que haber creado antes, VACIO) y sube todo.
REM  Despues, para publicar cambios, usa publicar.bat.
REM ============================================================
cd /d "%~dp0"
if exist ".git" (
    echo Esta carpeta ya esta conectada con Git. Usa publicar.bat.
    pause
    exit /b 0
)
git init
git branch -M main
git remote add origin https://github.com/CARMELOFOTO/ASTROZABAL-WEB.git
git add -A
git commit -m "Primera version de la web de ASTROZABAL"
git push -u origin main
echo.
echo Hecho. Ahora importa el repositorio en Vercel (ver LEEME.txt).
pause
