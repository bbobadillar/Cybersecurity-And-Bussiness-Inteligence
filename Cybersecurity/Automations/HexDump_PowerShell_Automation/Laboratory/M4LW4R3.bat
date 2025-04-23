@echo off
REM -------------------------------------------------
REM 🦠 Simulación de malware embebido en PNG
REM -------------------------------------------------

SET "MAL_DIR=%APPDATA%\Malware"
SET "MAL_EXEC=%MAL_DIR%\bad.exe"
SET "ORIG_EXEC=%WINDIR%\System32\calc.exe"

REM Verifica si la carpeta ya existe
IF NOT EXIST "%MAL_DIR%" (
    mkdir "%MAL_DIR%"
)

REM Copia calc.exe como si fuera el malware
IF NOT EXIST "%MAL_EXEC%" (
    copy "%ORIG_EXEC%" "%MAL_EXEC%" >nul
)

REM Ejecuta el malware simulado
start "" "%MAL_EXEC%"




