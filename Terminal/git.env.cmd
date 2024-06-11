@ECHO OFF

REM ----------- SETENV -----------

GOTO //////////////////////////////////////////////////

::  ECHO %~f0  -- complete path & filename of running script
::  ECHO %~dp0 -- complete path of running script

::  Remove from system path (Use Git)
C:\Windows\System32\OpenSSH

%HOME% - may be defined by Windows domain setting (your network drive)


://////////////////////////////////////////////////

::  SET HOME=%USERPROFILE%

:::::  toggle variable for git diff / difftool
SET GDIFF_STRING=diff

SET GITDIR=W:\Git
SET PATH=%GITDIR%\cmd;%PATH%

