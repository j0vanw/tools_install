@echo off
chcp 65001 
echo    ===============
echo    Cmake Installer
echo    ===============
echo.

::CMake
winget list --id Kitware.CMake | find "Kitware.CMake" >nul &&(
    echo ✔ CMake is already installed in your system.
) || (
    echo ➤ Installing CMake...
    winget install --id Kitware.CMake -e --source winget
)

echo.
echo CMake Installed Successfully!
if not defined FROM_MASTER pause