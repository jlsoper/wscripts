@ECHO OFF

REM ----------- SETENV -----------

GOTO //////////////////////////////////////////////////

::  ECHO %~f0  -- complete path & filename of running script
::  ECHO %~dp0 -- complete path of running script

%HOME% - may be defined by Windows domain setting (your network drive)

::  set system wide property (no credential helper)
git config --system --unset credential.helper


://////////////////////////////////////////////////

::  SET HOME=%USERPROFILE%

SET GITDIR=W:\Git
SET PATH=%GITDIR%\cmd;%PATH%

