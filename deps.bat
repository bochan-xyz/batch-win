@echo off
for /f %%a in ('dir /b') do (
  jdeps -P -classpath .\* %%a > %cd%\..\output\%%a.txt
)
