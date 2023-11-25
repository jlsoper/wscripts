@ECHO OFF

REM ----------- SETENV -----------

GOTO //////////////////////////////////////////////////

%HOMEDRIVE%%HOMEPATH%
%USERPROFILE%

::  ECHO %~f0  -- complete path & filename of running script
::  ECHO %~dp0 -- complete path of running script

::  set HOME variable with EV.lnk (GUI)
SET HOME=%USERPROFILE%\Linux


://////////////////////////////////////////////////

SET DIRCMD=/a /ogen

::  WSL 2
SET HOME_L=L:\home\jsoper

::  Visual Studo Code
SET USER_VSC=%HOME%\vscode\user-data\User

:: SET DB_USER=
:: SET DB_PASSWD=

SET PATH=%PATH%;W:\wscripts


::  Call any other .cmd file
CALL %~dp0git.env.cmd

::  CALL %~dp0ant.env.cmd
::  CALL %~dp0maven.env.cmd
::  CALL %~dp0gradle.env.cmd
::  CALL %~dp0nodejs.env.cmd
::  CALL %~dp0java.env.cmd

::  CALL %~dp0dotnet.env.cmd
::  CALL %~dp0golang.env.cmd
::  CALL %~dp0python.env.cmd


::  START /B /DW:\
::  IF "%USERDNSDOMAIN%"=="" (ECHO %COMPUTERNAME%) ELSE (ECHO %COMPUTERNAME%.%USERDNSDOMAIN%)

ECHO.
if "%USERDNSDOMAIN%"=="" (
  TITLE %COMPUTERNAME%
) else (
  TITLE %COMPUTERNAME%.%USERDNSDOMAIN%
)

