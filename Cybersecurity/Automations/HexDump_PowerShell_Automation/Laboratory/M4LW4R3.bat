:: ================================================
:: Simulated Malware Script [For Educational Use]
:: ================================================

:: © 2025 Bryan Bobadilla - Cybersecurity Specialist
:: GitHub: https://github.com/bbobadillar
:: LinkedIn: https://www.linkedin.com/in/bryan-bobadilla/

:: Description:
:: This batch file simulates basic malware behavior in a fully inoffensive and controlled way.
:: It is intended for learning purposes to demonstrate, step-by-step, how a real attacker
:: might interact with your folders, memory, or operating system under a malicious scenario.

:: DISCLAIMER:
:: ⚠️ THIS IS NOT MALWARE ⚠️
:: This script does NOT cause harm. It is designed for cybersecurity training and analysis only.
:: Do not use in production environments. Only execute in safe, isolated labs or virtual machines.

:: Version: 1.0.0
:: License: MIT (Non-commercial educational use only)

:: ================================================


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






