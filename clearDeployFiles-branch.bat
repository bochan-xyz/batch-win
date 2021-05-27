@echo off

set toDel=%1

:loop

IF EXIST %toDel%\NUL (

        echo Removing %toDel%
        rd /s /q %toDel%
		goto loop
)

:jboss
IF EXISTS C:\apps\jboss-as-7.1.1.Final\standalone\tmp\NUL (
	echo Removing tmp
        rd /s /q C:\apps\jboss-as-7.1.1.Final\standalone\tmp
		goto jboss
)
