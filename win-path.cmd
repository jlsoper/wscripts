@ECHO OFF

GOTO //////////////////////////////////////////////////

Displays or sets a search path for executable files.

PATH [[drive:]path[;...][;%PATH%]
PATH ;

Type PATH ; to clear all search-path settings and direct cmd.exe to search
only in the current directory.
Type PATH without parameters to display the current path.
Including %PATH% in the new path setting causes the old path to be
appended to the new setting.

::::::::::

:: echo %Path:;=&echo.%

%0 - script name
%1 - 1st command line parameter
%2 - 2nd command line parameter  (and so on till %9)
%* - ALL command line parameters (excluding the script name itself)

://////////////////////////////////////////////////

echo.%Path:;=&echo.%
