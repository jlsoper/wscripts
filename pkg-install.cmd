@ECHO OFF


GOTO //////////////////////////////////////////////////

Windows Package Manager v1.10.340
Copyright (c) Microsoft Corporation. All rights reserved.

Installs the selected package, either found by searching a configured source or directly from a manifest.
By default, the query must case-insensitively match the id, name, or moniker of the package.
Other fields can be used by passing their appropriate option.
By default, install command will check package installed status and try to perform an upgrade if applicable.
Override with --force to perform a direct install.


usage: winget install [[-q] <query>...] [<options>]


The following command aliases are available:
  add

The following arguments are available:
  -q,--query                           The query used to search for a package

The following options are available:
  -m,--manifest                        The path to the manifest of the package
  --id                                 Filter results by id
  --name                               Filter results by name
  --moniker                            Filter results by moniker
  -v,--version                         Use the specified version; default is the latest version
  -s,--source                          Find package using the specified source
  --scope                              Select install scope (user or machine)
  -a,--architecture                    Select the architecture
  --installer-type                     Select the installer type
  -e,--exact                           Find package using exact match
  -i,--interactive                     Request interactive installation; user input may be needed
  -h,--silent                          Request silent installation
  --locale                             Locale to use (BCP47 format)
  -o,--log                             Log location (if supported)
  --custom                             Arguments to be passed on to the installer in addition to the defaults
  --override                           Override arguments to be passed on to the installer
  -l,--location                        Location to install to (if supported)
  --ignore-security-hash               Ignore the installer hash check failure
  --allow-reboot                       Allows a reboot if applicable
  --skip-dependencies                  Skips processing package dependencies and Windows features
  --ignore-local-archive-malware-scan  Ignore the malware scan performed as part of installing an archive type package from local manifest
  --dependency-source                  Find package dependencies using the specified source
  --accept-package-agreements          Accept all license agreements for packages
  --no-upgrade                         Skips upgrade if an installed version already exists
  --header                             Optional Windows-Package-Manager REST source HTTP header
  --authentication-mode                Specify authentication window preference (silent, silentPreferred or interactive)
  --authentication-account             Specify the account to be used for authentication
  --accept-source-agreements           Accept all source agreements during source operations
  -r,--rename                          The value to rename the executable file (portable)
  --uninstall-previous                 Uninstall the previous version of the package during upgrade
  --force                              Direct run the command and continue with non security related issues
  -?,--help                            Shows help about the selected command
  --wait                               Prompts the user to press any key before exiting
  --logs,--open-logs                   Open the default logs location
  --verbose,--verbose-logs             Enables verbose logging for winget
  --nowarn,--ignore-warnings           Suppresses warning outputs
  --disable-interactivity              Disable interactive prompts
  --proxy                              Set a proxy to use for this execution
  --no-proxy                           Disable the use of proxy for this execution

More help can be found at: https://aka.ms/winget-command-install

:::::::::::

winget install -e --id Git.Git


://////////////////////////////////////////////////

if ""%2""=="""" GOTO noPARAM

echo.
winget install -e --id %1 --location %USERPROFILE%\HDD\%2

GOTO END

:noPARAM

ECHO "usage: %0 <packageId> <appName>"

:END

echo.

