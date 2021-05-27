@echo on

set deleting=

for /f "tokens=* delims=" %%P in ("%1") do (
    set "deleting=%deleting%%%P"
)

echo Removing %deleting%

:loop

IF EXIST "%deleting%\NUL" (
	rd /s /q "%deleting%"
	goto loop
)

IF EXIST "%deleting%" (
	rd /s /q "%deleting%"
	goto loop
)
