@echo off 
chcp 65001
echo    ===========
echo    Coding Apps
echo    ===========
echo.

::Git
winget list --id Git.Git >null 2>&1
if %errorlevel%==0 (
    echo ✔ Git is already installed in your system.
) else (
    echo ➤ Installing Git...
    winget install Git.Git
)

::Node.js
winget list --id OpenJS.NodeJS >null 2>&1
if %errorlevel%==0 (
    echo ✔ NodeJS is already installed in your system.
) else (
    echo ➤ Installing NodeJS...
    winget install OpenJS.NodeJS
)

::VS Code
winget list --id Microsoft.VisualStudioCode >null 2>&1
if %errorlevel%==0 (
    echo ✔ VS Code is already installed in your system.
) else (
    echo ➤ Installing VS Code...
    winget install Microsoft.VisualStudioCode
)

echo.
echo All installed Successfully!
pause