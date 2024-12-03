@ECHO OFF


GOTO //////////////////////////////////////////////////


TIMEOUT [/T] timeout [/NOBREAK]

Description:
    This utility accepts a timeout parameter to wait for the specified
    time period (in seconds) or until any key is pressed. It also
    accepts a parameter to ignore the key press.

Parameter List:
    /T        timeout       Specifies the number of seconds to wait.
                            Valid range is -1 to 99999 seconds.

    /NOBREAK                Ignore key presses and wait specified time.

    /?                      Displays this help message.

NOTE: A timeout value of -1 means to wait indefinitely for a key press.

Examples:
    TIMEOUT /?
    TIMEOUT /T 10
    TIMEOUT /T 300 /NOBREAK
    TIMEOUT /T -1

:::::::::::

If you don't want to display a message to the user during the delay,
 add >nul to the end of your timeout command.

:::::::::::

://////////////////////////////////////////////////

timeout /t 4 /nobreak >nul

start %USERPROFILE%\HDD\RocketDock\RocketDock.exe
