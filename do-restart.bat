@echo off

choice /c YN /m "Do you want to restart now?" /t 60 /d Y

if ERRORLEVEL 2  goto exit
if ERRORLEVEL 1  goto restart

:restart
shutdown /f /r /t 60
goto exit

:exit