@echo off 
set FROM_MASTER=1

call .\VSC.bat
call .\PY.bat
call .\CMake.bat
call .\JDK.bat

echo All Installed Successfully!
pause