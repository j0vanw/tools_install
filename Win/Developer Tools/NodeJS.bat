@echo off 
chcp 65001
echo    ===============
echo    Node JS Install
echo    ===============
echo.

::Node.js
winget list --id OpenJS.NodeJS | find "OpenJS.NodeJS" >nul &&(
    echo ✔ NodeJS is already installed in your system.
) || (
    echo ➤ Installing NodeJS...
    winget install --id OpenJS.NodeJS -e --source winget
)

echo.
echo NodeJS installed Successfully!
if not defined FROM_MASTER pause