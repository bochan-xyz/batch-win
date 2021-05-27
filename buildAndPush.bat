@echo off

set currentDirectory=%cd%

if [%1]==[] (
	set /p project=Which project: 
) else (
	set project=%1
)

if [%2]==[] (
	set /p version=Which version: 
) else (
	set version=%2
)

set actionDir=C:\ideaProjects\%project%

echo:
echo:cd %actionDir%
cd %actionDir%
echo:

echo:gradlew.bat clean
call gradlew.bat clean
echo:

echo:gradlew.bat build -x test
call gradlew.bat build -x test
echo:

set docker_tag=gregopentext/aa:%project%-%version%

echo:docker build -t %docker_tag% .
call docker build -t %docker_tag% .
echo:

if [%3]==[] (
	echo:docker push %docker_tag%
	call docker push %docker_tag%
)
echo:

echo:cd %currentDirectory%
cd %currentDirectory%
echo:
