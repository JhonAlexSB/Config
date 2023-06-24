@echo off

REM Crear un punto de restauración
echo Creando un punto de restauración...
wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "Desactivar servicios de Windows", 100, 7
echo Punto de restauración creado exitosamente.

REM Desactivar servicios de Windows
echo Desactivando servicios de Windows...

sc config "AppIDSvc" start=disabled
sc config "DiagTrack" start=disabled
sc config "DPS" start=disabled
sc config "TrkWks" start=disabled
sc config "Dmwappushservice" start=disabled
sc config "Fax" start=disabled
sc config "FDResPub" start=disabled
sc config "FDHost" start=disabled
sc config "GeolocationService" start=disabled
sc config "HomeGroupProvider" start=disabled
sc config "HomeGroupListener" start=disabled
sc config "iphlpsvc" start=disabled
sc config "CscService" start=disabled
sc config "Spooler" start=disabled
sc config "SessionEnv" start=disabled
sc config "RpcLocator" start=disabled
sc config "RemoteRegistry" start=disabled
sc config "seclogon" start=disabled
sc config "wscsvc" start=disabled
sc config "SysMain" start=disabled
sc config "LanmanServer" start=disabled
sc config "LanmanWorkstation" start=disabled
sc config "NetTcpPortSharing" start=disabled
sc config "TabletInputService" start=disabled
sc config "XblAuthManager" start=disabled
sc config "XblGameSave" start=disabled
sc config "XboxNetApiSvc" start=disabled
sc config "XboxGipSvc" start=disabled
sc config "XboxSvc" start=disabled

echo Servicios desactivados exitosamente.

paus

:: Source @_sabb_wr
REM https://vm.tiktok.com/ZM2DQdpMF/
