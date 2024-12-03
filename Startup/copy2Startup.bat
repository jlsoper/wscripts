@ECHO OFF


GOTO //////////////////////////////////////////////////

::  ECHO %~f0  -- complete path & filename of running script
::  ECHO %~dp0 -- complete path of running script


://////////////////////////////////////////////////

copy /V /Y  *.cmd   "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

