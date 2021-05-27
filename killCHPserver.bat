FOR /F "tokens=2 delims= " %%A IN ('tasklist /fi ^"WINDOWTITLE eq Administrator:^ ^ CHP_SERVER^" /NH') DO taskkill /pid %%A /f /t
