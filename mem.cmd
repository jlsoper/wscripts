@ECHO OFF

GOTO //////////////////////////////////////////////////


W:\>systeminfo | findstr /C:"Total Physical Memory"

Total Physical Memory:     1,024 MB

W:\>systeminfo | findstr /C:"Available Physical Memory"

Available Physical Memory: 0 MB

://////////////////////////////////////////////////

SYSTEMINFO | FINDSTR /C:"Total Physical Memory"
echo.
SYSTEMINFO | FINDSTR /C:"Available Physical Memory"

