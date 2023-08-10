@ECHO OFF

REM ----------- SETENV -----------

GOTO //////////////////////////////////////////////////

::  ECHO %~f0  -- complete path & filename of running script
::  ECHO %~dp0 -- complete path of running script



://////////////////////////////////////////////////

::  move __pycache__ directory  ( Python3.8+ )
SET PYTHONPYCACHEPREFIX=%TEMP%\__pycache__


SET myPython=W:\Python\python-3.11.3.amd64\Scripts;W:\Python\python-3.11.3.amd64\Lib\site-packages;W:\Python\python-3.11.3.amd64

SET PATH=%myPython%;%PATH%

