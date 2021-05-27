@echo off
FOR /F "tokens=2 delims= " %%A IN ('tasklist /fi ^"imagename eq XWin.exe^" /NH') DO taskkill /pid %%A /f /t
