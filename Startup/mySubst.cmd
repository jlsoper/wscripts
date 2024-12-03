@ECHO OFF

GOTO //////////////////////////////////////////////////

C:\>subst /?
Associates a path with a drive letter.

SUBST [drive1: [drive2:]path]
SUBST drive1: /D

  drive1:        Specifies a virtual drive to which you want to assign a path.
  [drive2:]path  Specifies a physical drive and path you want to assign to
                 a virtual drive.
  /D             Deletes a substituted (virtual) drive.

Type SUBST with no parameters to display a list of current virtual drives.

:::::::::: 

Windows Registry Editor Version 5.00

[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run]
"D Drive"="subst D: C:\\Users\\James\\D-drive"
"G Drive"="subst G: \"C:\\Users\\James\\Google Drive\""

:::::::::: 

::  subst G: "%USERPROFILE%\Google Drive"

::  start W:\VirtuaWin\VirtuaWin.exe
::  start /min taskmgr
::  start W:\DesktopInfo\DesktopInfo.exe
::  start W:\RocketDock\RocketDock.exe


-- Deletes a substituted (virtual) drive
subst L: /d

-- Remove a specified connection
net use /del U:

://////////////////////////////////////////////////

subst W: %USERPROFILE%\HDD
