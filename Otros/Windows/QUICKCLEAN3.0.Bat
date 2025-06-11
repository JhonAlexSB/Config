@echo off
color 2

:: Clean Recent folder
del /s /f /q "%userprofile%\Recent\*.*"

:: Clean Windows Prefetch folder
del /s /f /q "C:\Windows\Prefetch\*.*"

:: Clean temporary folders
del /s /f /q "C:\Windows\Temp\*.*"
del /s /f /q "%USERPROFILE%\AppData\Local\Temp\*.*"
del /s /f /q "%windir%\temp\*.*"

:: Remove and recreate temp folders
rd /s /q "%windir%\temp"
md "%windir%\temp"

:: Clean Prefetch folder
del /s /f /q "%windir%\Prefetch\*.*"
rd /s /q "%windir%\Prefetch"
md "%windir%\Prefetch"

:: Clean system32\dllcache folder
del /s /f /q "%windir%\system32\dllcache\*.*"
rd /s /q "%windir%\system32\dllcache"
md "%windir%\system32\dllcache"

:: Clean other temporary folders
del /s /f /q "%SystemDrive%\Temp\*.*"
rd /s /q "%SystemDrive%\Temp"
md "%SystemDrive%\Temp"

del /s /f /q "%temp%\*.*"
rd /s /q "%temp%"
md "%temp%"

:: Clean user profile history folders
del /s /f /q "%USERPROFILE%\Local Settings\History\*.*"
rd /s /q "%USERPROFILE%\Local Settings\History"
md "%USERPROFILE%\Local Settings\History"

:: Clean Temporary Internet Files
del /s /f /q "%USERPROFILE%\Local Settings\Temporary Internet Files\*.*"
rd /s /q "%USERPROFILE%\Local Settings\Temporary Internet Files"
md "%USERPROFILE%\Local Settings\Temporary Internet Files"

:: Clean user profile temp folders
del /s /f /q "%USERPROFILE%\Local Settings\Temp\*.*"
rd /s /q "%USERPROFILE%\Local Settings\Temp"
md "%USERPROFILE%\Local Settings\Temp"

:: Clean Recent and Cookies folders
del /s /f /q "%USERPROFILE%\Recent\*.*"
rd /s /q "%USERPROFILE%\Recent"
md "%USERPROFILE%\Recent"

del /s /f /q "%USERPROFILE%\Cookies\*.*"
rd /s /q "%USERPROFILE%\Cookies"
md "%USERPROFILE%\Cookies"

:: Additional cleanup commands
deltree /y C:\Windows\tempor~1
deltree /y C:\Windows\temp
deltree /y C:\Windows\tmp
deltree /y C:\Windows\ff*.tmp
deltree /y C:\Windows\history
deltree /y C:\Windows\cookies
deltree /y C:\Windows\recent
deltree /y C:\Windows\spool\printers
del C:\WIN386.SWP

:: Additional cache cleanup
DEL /F /Q "C:\Users\%USERPROFILE%\AppData\Local\Temp"
DEL /F /Q "C:\Users\%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Cache\Cache_Data"
DEL /F /Q "C:\Users\%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Code Cache\js"
DEL /F /Q "C:\Users\%USERPROFILE%\AppData\LocalLow\Microsoft"
DEL /F /Q "C:\Users\%USERPROFILE%\AppData\Local\Microsoft\Windows\Caches"
DEL /F /Q "C:\Users\%USERPROFILE%\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData"
DEL /F /Q "C:\Users\%USERPROFILE%\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content"
DEL /F /Q "C:\Users\%USERPROFILE%\AppData\LocalLow\Microsoft"
DEL /F /Q "C:\Users\%USERPROFILE%\AppData\Local\Temp"
DEL /F /Q "C:\Windows\Temp"
DEL /F /Q "C:\Windows\Prefetch"
