@ECHO OFF

REM ----------- SETENV -----------

GOTO //////////////////////////////////////////////////

WHERE [/R dir] [/Q] [/F] [/T] pattern...

Description:
    Displays the location of files that match the search pattern.
    By default, the search is done along the current directory and
    in the paths specified by the PATH environment variable.

Parameter List:
    /R       Recursively searches and displays the files that match the
             given pattern starting from the specified directory.

    /Q       Returns only the exit code, without displaying the list
             of matched files. (Quiet mode)

    /F       Displays the matched filename in double quotes.

    /T       Displays the file size, last modified date and time for all
             matched files.

    pattern  Specifies the search pattern for the files to match.
             Wildcards * and ? can be used in the pattern. The
             "$env:pattern" and "path:pattern" formats can also be
             specified, where "env" is an environment variable and
             the search is done in the specified paths of the "env"
             environment variable. These formats should not be used
             with /R. The search is also done by appending the
             extensions of the PATHEXT variable to the pattern.

     /?      Displays this help message.

  NOTE: The tool returns an error level of 0 if the search is
        successful, of 1 if the search is unsuccessful and
        of 2 for failures or errors.

Examples:
    WHERE /?
    WHERE myfilename1 myfile????.*
    WHERE $windir:*.*
    WHERE /R c:\windows *.exe *.dll *.bat
    WHERE /Q ??.???
    WHERE "c:\windows;c:\windows\system32:*.dll"
    WHERE /F /T *.dll

::::::::::

::  ECHO %~f0  -- complete path & filename of running script
::  ECHO %~dp0 -- complete path of running script

%HOME% - may be defined by Windows domain setting (your network drive)

%0 - script name
%1 - 1st command line parameter
%2 - 2nd command line parameter  (and so on till %9)
%* - ALL command line parameters (excluding the script name itself)


://////////////////////////////////////////////////

where %*
