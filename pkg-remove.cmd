@ECHO OFF


GOTO //////////////////////////////////////////////////

Windows Package Manager v1.10.340
Copyright (c) Microsoft Corporation. All rights reserved.

Uninstalls the selected package, either found by searching the installed packages list or directly from a manifest.
By default, the query must case-insensitively match the id, name, or moniker of the package.
Other fields can be used by passing their appropriate option.


usage: winget uninstall [[-q] <query>...] [<options>]

The following command aliases are available:
  remove
  rm

The following arguments are available:
  -q,--query                  The query used to search for a package

The following options are available:
  -m,--manifest               The path to the manifest of the package
  --id                        Filter results by id
  --name                      Filter results by name
  --moniker                   Filter results by moniker
  --product-code              Filters using the product code
  -v,--version                The version to act upon
  --all,--all-versions        Uninstall all versions
  -s,--source                 Find package using the specified source
  -e,--exact                  Find package using exact match
  --scope                     Select installed package scope filter (user or machine)
  -i,--interactive            Request interactive installation; user input may be needed
  -h,--silent                 Request silent installation
  --force                     Direct run the command and continue with non security related issues
  --purge                     Deletes all files and directories in the package directory (portable)
  --preserve                  Retains all files and directories created by the package (portable)
  -o,--log                    Log location (if supported)
  --header                    Optional Windows-Package-Manager REST source HTTP header
  --authentication-mode       Specify authentication window preference (silent, silentPreferred or interactive)
  --authentication-account    Specify the account to be used for authentication
  --accept-source-agreements  Accept all source agreements during source operations
  -?,--help                   Shows help about the selected command
  --wait                      Prompts the user to press any key before exiting
  --logs,--open-logs          Open the default logs location
  --verbose,--verbose-logs    Enables verbose logging for winget
  --nowarn,--ignore-warnings  Suppresses warning outputs
  --disable-interactivity     Disable interactive prompts
  --proxy                     Set a proxy to use for this execution
  --no-proxy                  Disable the use of proxy for this execution

More help can be found at: https://aka.ms/winget-command-uninstall

:::::::::::


://////////////////////////////////////////////////

if ""%1""=="""" GOTO noPARAM

echo.
winget uninstall %1

GOTO END

:noPARAM

ECHO "usage: %0 <appName>"

:END

echo.

