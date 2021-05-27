@echo on

set deleting=

for /f "tokens=* delims=" %%P in ("%1") do (
    set "deleting=%deleting%%%P"
)

echo Removing %deleting%
