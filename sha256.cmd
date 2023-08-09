@ECHO OFF


GOTO //////////////////////////////////////////////////

%string:~start,end%

:::

%0 - script name
%1 - 1st command line parameter
%2 - 2nd command line parameter  (and so on till %9)
%* - ALL command line parameters (excluding the script name itself)


://////////////////////////////////////////////////

if ""%1""=="""" GOTO noPARAM

setlocal

set file1=%1
set file2=%file1:~0,-7%

:: echo %file1%
:: echo %file2%

for /F "tokens=1" %%g IN (%file1%) do set str1=%%g

for /F "delims= " %%a in ('certUtil -hashfile %file2% sha256 ^| findstr /v "hash"') do set str2=%%a

:: echo %str1%
:: echo %str2%

if not "%str1%"=="%str2%" (
  echo "WARNING: checksums do NOT Match"
) else (
  echo %file2%: OK
)

endlocal

GOTO END

:noPARAM

ECHO "usage: %0 <file.sha256>"

:END

