@echo off 
chcp 65001
echo    =============
echo    Opera Install
echo    =============
echo.

::Opera
winget list --id Opera.Opera | find "Opera.Opera" >nul &&(
    echo ✔ Opera is already installed in your system.
) || (
    echo ➤ Installing Opera
    winget install --id Opera.Opera -e --source winget
)

echo.
echo Opera Installed Successfully!
if not defined FROM_MASTER pause