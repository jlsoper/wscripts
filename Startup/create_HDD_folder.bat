@ECHO OFF


GOTO //////////////////////////////////////////////////

::  ECHO %~f0  -- complete path & filename of running script
::  ECHO %~dp0 -- complete path of running script

if not exist "%USERPROFILE%\HDD\" (
 mkdir %USERPROFILE%\HDD
) else (
 echo folder exists
)


://////////////////////////////////////////////////

mkdir %USERPROFILE%\HDD 2> NUL
