@echo off

set workspace=%1
set target=%2

for /f "tokens=*" %%G in ('dir /b /a:d %workspace%\CHP\Static\static\deployed_plugins\DHUB') do (
	robocopy %workspace%\CHP\Static\static\deployed_plugins\DHUB\%%G\ C:\Java\Deploy\CHP\CHP\CHP.war\static\%target%\DHUB\%%G\16.4.1.0\ /mir
)

for /f "tokens=*" %%G in ('dir /b /a:d %workspace%\CHP\Static\static\deployed_plugins\EXTN') do (
	robocopy %workspace%\CHP\Static\static\deployed_plugins\EXTN\%%G\ C:\Java\Deploy\CHP\CHP\CHP.war\static\%target%\EXTN\%%G\16.4.1.0\ /mir
)

for /f "tokens=*" %%G in ('dir /b /a:d %workspace%\CHP\Static\static\deployed_plugins\WULF') do (
	robocopy %workspace%\CHP\Static\static\deployed_plugins\WULF\%%G\ C:\Java\Deploy\CHP\CHP\CHP.war\static\%target%\WULF\%%G\16.4.1.0\ /mir
)
