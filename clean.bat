@echo off
setlocal enabledelayedexpansion

echo ==================================================
echo       Requiem Project Cleanup Script (Windows)
echo ==================================================
echo.

:: Verify if we are in the root directory of the project
if not exist pubspec.yaml (
    echo [ERROR] pubspec.yaml not found.
    echo Please run this script from the root of the Requiem project.
    pause
    exit /b 1
)

echo [1/3] Running Flutter Clean...
where flutter >nul 2>&1
if %errorlevel% equ 0 (
    call flutter clean
) else (
    echo Flutter CLI not found in PATH. Skipping 'flutter clean'...
)

echo.
echo [2/3] Cleaning temporary files and folders...

:: Function-like block for deleting directories
for %%d in (
    ".dart_tool"
    "build"
    ".pub-cache"
    ".pub"
    ".idea"
    "dism_mount"
    "winpe_base"
    "temp_assets"
    "tmp"
    "windows\flutter\ephemeral"
    "linux\flutter\ephemeral"
) do (
    if exist "%%~d" (
        echo   Removing directory: %%~d...
        rmdir /s /q "%%~d" >nul 2>&1
        if exist "%%~d" (
            echo     [WARNING] Could not remove %%~d (files might be locked)
        )
    )
)

:: Deleting specific files
for %%f in (
    ".flutter-plugins"
    ".flutter-plugins-dependencies"
    "diagnose.obj"
) do (
    if exist "%%~f" (
        echo   Removing file: %%~f...
        del /f /q "%%~f" >nul 2>&1
    )
)

:: Deleting wildcards in root
echo   Removing root .iso files...
del /f /q *.iso >nul 2>&1

echo   Removing .iml, .ipr, .iws files...
del /f /q *.iml *.ipr *.iws >nul 2>&1

:: Deleting recursively or in specific folders
echo   Removing compiled executables in inno/...
if exist "inno" (
    del /f /q "inno\*.exe" >nul 2>&1
)

echo   Removing python pycache and compiled files...
for /r %%i in (*.pyc) do del /f /q "%%i" >nul 2>&1
for /d /r %%i in (__pycache__) do (
    if exist "%%i" rmdir /s /q "%%i" >nul 2>&1
)

echo   Removing logs...
del /f /q *.log >nul 2>&1
if exist "scratch" (
    del /f /q "scratch\*.log" >nul 2>&1
)

echo.
echo [3/3] Done! Project cleaned successfully.
echo You can now safely zip or migrate the project directory.
echo.
pause
