@echo off

if [%1]==[] (
	set /p actionDir=Which project: 
) else (
	set actionDir=C:\ideaProjects\%1
)

echo:%actionDir%

if [%2]==[false] (
	echo:false
)
