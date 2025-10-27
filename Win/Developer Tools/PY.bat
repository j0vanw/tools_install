@echo off
chcp 65001
echo    ================
echo    Python Installer
echo    ================
echo.

::Python
winget list --id Python.Python.3.14 | find "Python.Python.3.14" >nul &&(
    echo ✔ Python is already installed in your system.
) || (
    echo ➤ Installing Python...
    winget install --id Python.Python.3.14 -e -source winget
)

echo.
echo Python Installed Successfully!
if not defined FROM_MASTER pause    