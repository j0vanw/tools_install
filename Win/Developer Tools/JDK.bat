@echo off
chcp 65001
echo    ================================
echo    Java SE Development Kit (Oracle)
echo    ================================
echo.

::JavaJDK
winget list --id Oracle.JDK.24 | find "Oracle.JDK.24" >nul &&(
    echo ✔ Java is already installed in your system.
) || (
    echo ➤ Installing Java...
    winget install --id Oracle.JDK.24 -e --source winget
)

echo.
echo Java Installed Successfully!
if not defined FROM_MASTER pause