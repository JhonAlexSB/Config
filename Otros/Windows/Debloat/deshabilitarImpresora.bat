@echo off

REM ----- Impresora
:: Cola de impresión {dependencia} [impresora o fax]
call :disableFunc Spooler
:: Extensiones y notificaciones de impresora {dependencia} [impresora]
call :disableFunc PrintNotify
:: Fax
call :disableFunc Fax
:: PrintWorkflow_314914e {dependencia} [impresora]
call :disableFunc PrintWorkflowUserSvc_314914e
:: Servidor {dependencias} [compartir archivos, impresoras, de forma remota]
call :disableFunc LanmanServer

:disableFunc
  sc config %~1 start=disabled
  net stop %~1
goto :eof

:enableFunc
  sc config %~1 start=enable
  net start %~1
goto :eof

