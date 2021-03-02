@echo off
REM Desinstala extension firma digital CI con unopkg, revisar si 5 o 6...
SET "unopkg_path=C:\Program Files\LibreOffice 5\program"
"%unopkg_path%\unopkg" remove com.example.advanced_signature

REM Revisa la arquitectura del sistema operativo
REG QUERY "HKLM\Hardware\Description\System\CentralProcessor\0" | FIND /i "x86" > NUL && SET os=32BIT || set os=64BIT

REM Desinstalacion en 32 bits
IF %os%==32BIT (
wmic product where "name = 'IDProtect Client 6.44.00'" call uninstall /nointeractive
wmic product where "name = 'Athena ASEDrive 4.1.0.1'" call uninstall /nointeractive
wmic product where "name = 'OMNIKEY 3x21 PC/SC Driver'" call uninstall /nointeractive
wmic product where "name = 'Microsoft CAPICOM 2.1.0.2 SDK'" call uninstall /nointeractive
wmic product where "name = 'Security Update for CAPICOM (KB931906)'" call uninstall /nointeractive
) ELSE (
REM Desinstalacion en 64 bits
wmic product where "name = 'IDProtect Clientx64 6.44.00'" call uninstall /nointeractive
wmic product where "name = 'Athena ASEDrive x64 4.1.0.1'" call uninstall /nointeractive
wmic product where "name = 'Microsoft CAPICOM 2.1.0.2 SDK'" call uninstall /nointeractive
wmic product where "name = 'Security Update for CAPICOM (KB931906)'" call uninstall /nointeractive
)
