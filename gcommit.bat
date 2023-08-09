@ECHO OFF


GOTO //////////////////////////////////////////////////

C:\>date /?
Displays or sets the date.

DATE [/T | date]

Type DATE without parameters to display the current date setting and
a prompt for a new one.  Press ENTER to keep the same date.

If Command Extensions are enabled the DATE command supports
the /T switch which tells the command to just output the
current date, without prompting for a new date.



C:\>time /?
Displays or sets the system time.

TIME [/T | time]

Type TIME with no parameters to display the current time setting and a prompt
for a new one.  Press ENTER to keep the same time.

If Command Extensions are enabled the TIME command supports
the /T switch which tells the command to just output the
current time, without prompting for a new time.

://////////////////////////////////////////////////

::  git commit -m "(message)"
::  ECHO %DATE% %TIME%

git commit -m "%DATE% %TIME% - %COMPUTERNAME% \ %USERNAME%"
