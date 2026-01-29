echo === Setting repo wintype: win or wintest =============
set	GITREPO=wintest
set ECUBOT=EcuapassBot8
echo %GITREPO%

@echo off
setlocal EnableDelayedExpansion
chcp 850 > nul

echo === Verificando disponibilidad de Git ================
where git >nul 2>null
if %ERRORLEVEL% EQU 0 (
    echo +++ Git esta preinstalado
) else (
    set "PATH=%~dp0..\mingit\cmd;%PATH%"
)

echo === Quitando previos App y GUI =======================
taskkill /IM "EcuapassBotApp.exe" /F 2>nul 
::taskkill /FI "WINDOWTITLE eq EcuapassBot" /F

echo === Obteniendo Ultimo release en GitHub ==============
for /f %%A in ('
  powershell -NoProfile -Command ^
    "(Invoke-RestMethod -Headers @{\"User-Agent\"=\"batch\"} -Uri https://api.github.com/repos/lgsof/%ECUBOT%-%GITREPO%/releases/latest).tag_name"
') do set "LATEST_TAG=%%A"

if not defined LATEST_TAG (
  echo ERROR: No se pudo obtener el último tag desde GitHub.
  goto :ejecutar_app
)

echo Ultimo tag: !LATEST_TAG!

echo === Leyendo VERSION.txt ==============================
if not exist VERSION.txt (
    echo ERROR: Archivo VERSION.txt no encontrado.
    goto :ejecutar_actualizacion
)
set /p "LOCAL_TAG=" < VERSION.txt

echo --------------------------------------------------------
echo Version remota : !LATEST_TAG!
echo Version local  : !LOCAL_TAG!
echo --------------------------------------------------------

:: === Comparar versiones
if "!LATEST_TAG!"=="!LOCAL_TAG!" (
    echo +++ Version local ya estaba actualizada.
    goto :ejecutar_app
)

:ejecutar_actualizacion

echo === Verificando si existe repositorio Git =============
if not exist ".git" (
    echo ERROR: Carpeta .git no encontrada. Se omite la actualizacion.
    goto :ejecutar_app
)
REM ===================================================================
REM ACTUALIZACION
REM ===================================================================
echo === Buscando actualizaciones ==========================
git fetch origin
if %ERRORLEVEL% EQU 1 (
    echo ADVERTENCIA: Fallo en git fetch. Se omite la actualizacion.
    goto :ejecutar_app
)
echo === Archivos que se actualizan ========================
git --no-pager diff --name-status origin/main
echo === Aplicando actualizaciones =========================
git reset --hard origin/main

if %ERRORLEVEL% EQU 1 (
    echo ADVERTENCIA: Fallo en git reset. Continuando con los archivos actuales.
)
REM ===================================================================

echo === Parchando app =====================================
call patches\ebotpatch-update-exe-win.bat

echo === Actualizando VERSION.txt ==========================
echo !LATEST_TAG!>VERSION.txt

:ejecutar_app

echo === Ejecutando EcuapassBot ============================
set JAVA=javaw
if "%~1"=="debug" (
    set JAVA=java
)
start ecugui\jre-ebot-win\bin\%JAVA% -Djavax.accessibility.assistive_technologies= -jar ecugui\EcuapassBotGUI.jar

echo === Actualizand Launcher ==============================
if exist EcuapassBot-New.bat (
	echo "Copiando new updater..."
    copy /Y EcuapassBot-New.bat EcuapassBot.bat >nul
)

