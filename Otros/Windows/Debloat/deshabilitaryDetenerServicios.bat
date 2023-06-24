@echo off

:: Control parental
call :disableFunc WpcMonSvc
:: Datos de los contactos_314914e
call :disableFunc PimIndexMaintenanceSvc_314914e
:: Diagnostic Execution Service {dependencia} [telemetria]
call :disableFunc diagsvc
:: Directiva de extracción de tarjetas inteligentes
call :disableFunc SCPolicySvc
:: Experiencia del usuario y telemetría asociadas {dependencia} [telemetria]
call :disableFunc DiagTrack
:: Hora de la red de telefonía móvil
call :disableFunc autotimesvc
:: Host de sistema de diagnóstico {dependencia} [diagsvc]
call :disableFunc WdiSystemHost
:: Host del servicio de diagnóstico {dependencia} [diagsvc]
call :disableFunc WdiServiceHost
:: Payments and NFC/SE Manager
call :disableFunc SEMgrSvc
:: Propagación de certificados {dependencia} [tarjetas inteligentes]
call :disableFunc CertPropSvc

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

REM ----- Virtualizacion
:: interfaz de servicio invitado de Hyper-V {dependencia} [virtualizacion]
call :disableFunc vmicguestinterface
:: Servicio de cierre de invitado de Hyper-V {dependencia} [virtualizacion]
call :disableFunc vmicshutdown
:: Servicio de host HV {dependencia} [virtualizacion]
call :disableFunc HvHost
:: Servicio de proceso de host de Hyper-V {dependencia} [virtualizacion]
call :disableFunc vmcompute
:: Servicio de intercambio de datos de Hyper-V {dependencia} [virtualizacion]
call :disableFunc vmickvpexchange
:: Servicio de sincronización de hora de Hyper-V {dependencia} [Virtualizacion]
call :disableFunc vmictimesync
:: Servicio de virtualización de Escritorio remoto de Hyper-V {dependencia} [Virtualizacion]
call :disableFunc vmicrdv
:: Solicitante de instantáneas de volumen de Hyper-V {dependencias} [virtualizacion]
call :disableFunc vmicvss
:: Servicio PowerShell Direct de Hyper-V
call :disableFunc vmicvmsession

REM ----- Team Viewer o conexiones remotas
:: Administrador de conexiones de acceso remoto
call :disableFunc Rasman
:: Redirector de puerto en modo usuario de Servicios de Escritorio remoto {dependencia} [teamViewer]
call :disableFunc UmRdpService
:: Servicios de Escritorio remoto {dependencia} [teamViewer]
call :disableFunc TermService
:: Administración remota de Windows (WS-Management) {dependencia}[teamViewer]
call :disableFunc WinRM
:: Configuración de Escritorio remoto {dependencia} [teamViewer]
call :disableFunc SessionEnv
:: Enrutamiento y acceso remoto {dependencia} [teamViewer]
call :disableFunc RemoteAccess

REM ----- Funciones hardware
:: Servicio de Panel de escritura a mano y teclado táctil
call :disableFunc TabletInputService
:: Servicio biométrico de Windows {dependencia} [lector de huella inicio sesion]
call :disableFunc WbioSrvc
:: Servicio FrameServer de la Cámara de Windows
call :disableFunc FrameServer

REM ----- Xbox
:: Administrador de autenticación de Xbox Live
call :disableFunc XblAuthManager
:: Servicio de red de Xbox Live
call :disableFunc XboxNetApiSvc
:: Xbox Accessory Management Service
call :disableFunc XboxGipSvc


REM ----- dependencias de algunas apps
:: Servicio de geolocalización {dependencia} [algunas apps]
call :disableFunc lfsvc
:: Sincronizar host_314914e {dependencias} [aplicaciones windows como contactos, calendario etc]
call :disableFunc OneSyncSvc_314914e
:: Servicio Volumetric Audio Compositor {dependencia} [relidad virtual]
call :disableFunc VacSvc
:: Administrador de mapas descargado {dependencia} [microsoft maps]
call :disableFunc MapsBroker




:: Servicio de directivas de diagnóstico {dependencia} [telemetria]
call :disableFunc DPS
:: Servicio de prueba comercial
call :disableFunc RetailDemo
:: Servicio de Windows Insider [prueba de nuevos lanzamientos de SO]
call :disableFunc wisvc
:: Servicio telefónico
call :disableFunc PhoneSvc
:: Tarjeta inteligente
call :disableFunc SCardSvr
:: Telefonía [obsoleto]
call :disableFunc TapiSrv
:: Ubicador de llamada a procedimiento remoto (RPC) [obsoleto]
call :disableFunc RpcLocator
:: WalletService [cartera de windows, pagos online]
call :disableFunc WalletService





REM desabilitacion personalizada
:: Adquisición de imágenes de Windows (WIA) {dependencia} [imagenes de bloqueo]
call :disableFunc stisvc
:: Dolby DAX2 API Service {dependencia} [sonido envolvente]
call :disableFunc Dolby DAX2 API Service

:: depencia microsoft edge app
:: Microsoft Edge Elevation Service (MicrosoftEdgeElevationService)
call :disableFunc MicrosoftEdgeElevationService
:: Microsoft Edge Update Service (edgeupdate)
call :disableFunc edgeupdate
:: Microsoft Edge Update Service (edgeupdatem)
call :disableFunc edgeupdatem


REM :: Servicio de administrador de conexiones con servicios Wi-Fi Direct {dependencia} [uso de wifi]
REM call :disableFunc WFDSConMgrSvc
REM :: Servicio de compatibilidad con Bluetooth {dependencia} [bluetooth]
REM call :disableFunc bthserv


REM :: Servicio de instalación de Microsoft Store {dependencia} [microsoft store]
REM call :disableFunc InstallService
REM :: Servicio de licencia de cliente (ClipSVC) {dependencia} [microsoft store]
REM call :disableFunc ClipSVC
REM :: Servicio de puerta de enlace de audio de Bluetooth
REM call :disableFunc BTAGService
REM :: Servicio PushToInstall de Windows {dependencia} [microsoft store]
REM call :disableFunc PushToInstall
goto :eof


:disableFunc
  sc config %~1 start=disabled
  net stop %~1
goto :eof

:enableFunc
  sc config %~1 start=enable
  net start %~1
goto :eof





:: servicios los cuales detuve y su explicacion detallada
REM https://youtu.be/5nyi84LELjI?t=317
:: source: stop and start services
REM https://stackoverflow.com/questions/133883/stop-and-start-a-service-via-batch-or-cmd-file
:: how make comments in bat
REM https://stackoverflow.com/questions/11269338/how-to-comment-out-add-comment-in-a-batch-cmd
:: funcion y parametro
REM https://stackoverflow.com/questions/10149194/something-like-a-function-method-in-batch-files

:: Playlist red settings optimizacion windows 10
REM https://www.youtube.com/playlist?list=PLs5Vgehol1t267p8LNl0NW-ZwSc1YK7V9
