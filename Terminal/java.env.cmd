@ECHO OFF

REM ----------- SETENV -----------

GOTO //////////////////////////////////////////////////

::  ECHO %~f0  -- complete path & filename of running script
::  ECHO %~dp0 -- complete path of running script

::  SET ANT_HOME=W:\Ant
::  SET JBOSS_HOME=W:\JBoss
::  SET CATALINA_HOME=W:\Tomcat
::  SET DERBY_HOME=W:\derby

:: SET PATH=%PATH%;%ANT_HOME%\bin
:: SET PATH=%PATH%;%DERBY_HOME%\bin

://////////////////////////////////////////////////

SET JAVA_HOME=C:\java\jdk8
SET CLASSPATH=.;W:\wscripts\jar\*;W:\wscripts\class

SET PATH=%JAVA_HOME%\bin;%PATH%

