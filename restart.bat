@echo off

choice /c YN /m "Do you want to restart now?" /t 10 /d y

if ERRORLEVEL 1  echo "YES"
if ERRORLEVEL 2  echo "NO"