@echo off
chcp 65001
echo    ==========================
echo    Visual Studio Code Install
echo    ==========================
echo.

::VS Code
winget list --id Microsoft.VisualStudioCode | find "Microsoft.VisualStudioCode" >nul && (
    echo ✔ VS Code is already installed in your system.
) || (
    echo ➤ Installing VS Code...
    winget install --id Microsoft.VisualStudioCode -e --source winget
)

echo.
echo VSC Installed Successfully!
if not defined FROM_MASTER pause