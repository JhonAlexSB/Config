@echo off
title Matar procesos

echo --------------------------
echo MATANDO PROCESOS WINDOWS
echo --------------------------

:: Lista de procesos (fácil de editar)
:: Solo agrega o quita líneas entre los paréntesis.
:: NO uses comillas, solo el nombre con o sin .exe
setlocal EnableDelayedExpansion
set index=0

rem === INICIO DE LA LISTA DE PROCESOS ===
set "procesos[0]=wpscenter.exe"
set "procesos[1]=wpscloudsvr.exe"
set "procesos[2]=OfficeClickToRun.exe"
set "procesos[3]=OneApp.IGCC.WinService.exe"
set "procesos[4]=PhoneExperienceHost.exe"
set "procesos[5]=PhoneExperienceHost.exe"
set "procesos[6]=TextInputHost.exe"
set "procesos[7]=CompatTelRunner.exe"
set "procesos[8]=WmiPrvSE.exe"
set "procesos[9]=backgroundTaskHost.exe"
set "procesos[10]=msedgewebview2.exe"
rem === FIN DE LA LISTA DE PROCESOS ===

:loop
call set "proc=%%procesos[%index%]%%"
if defined proc (
    echo Terminando !proc! ...
    taskkill /F /IM "!proc!" >nul 2>&1
    if errorlevel 1 (
        echo No se pudo terminar !proc! o no está en ejecución.
    ) else (
        echo !proc! terminado con éxito.
    )
    set /a index+=1
    goto loop
)

echo.
echo Todos los procesos listados fueron procesados.
pause
