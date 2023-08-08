@ECHO OFF


GOTO //////////////////////////////////////////////////

FOR /F "tokens=*" %%G IN ('DIR /B /S %1\*.log') DO DEL /Q "%%G"


:::::::::::

del /s /q /f /a ".\desktop.ini"


://////////////////////////////////////////////////

if ""%1""=="""" GOTO noPARAM

::  Delete all 'desktop.ini' files in directory & subdirectories

FOR /F "tokens=*" %%G IN ('DIR /B /S %1\desktop.ini') DO DEL /Q /F /a "%%G"


GOTO END

:noPARAM

ECHO "usage: %0 <top-level directory>"

:END
