@ECHO OFF

REM ----------- SETENV -----------

GOTO //////////////////////////////////////////////////

::  ECHO %~f0  -- complete path & filename of running script
::  ECHO %~dp0 -- complete path of running script


.Net SDK x64 LTS
  dotnet-sdk-6.0.405-win-x64.exe

The installation was successful.

The following products were installed:
    * .NET SDK 8.0.405
    * .NET Runtime 8.0.12
    * ASP.NET Core Runtime 8.0.12
    * .NET Windows Desktop Runtime 8.0.12

This product collects usage data
    * More information and opt-out https://aka.ms/dotnet-cli-telemetry

Resources
    * .NET Documentation https://aka.ms/dotnet-docs
    * SDK Documentation https://aka.ms/dotnet-sdk-docs
    * Release Notes https://aka.ms/dotnet6-release-notes
    * Tutorials https://aka.ms/dotnet-tutorials

:: Path (added)
%ProgramFiles%\dotnet\
%USERPROFILE%\.dotnet\tools


::::::::::::::::::::

###  .NET telemetry setting
export DOTNET_CLI_TELEMETRY_OPTOUT=1

::::::::::::::::::::

Usage: dotnet [runtime-options] [path-to-application] [arguments]

Execute a .NET application.

runtime-options:
  --additionalprobingpath <path>   Path containing probing policy and assemblies to probe for.
  --additional-deps <path>         Path to additional deps.json file.
  --depsfile                       Path to <application>.deps.json file.
  --fx-version <version>           Version of the installed Shared Framework to use to run the application.
  --roll-forward <setting>         Roll forward to framework version  (LatestPatch, Minor, LatestMinor, Major, LatestMajor, Disable).
  --runtimeconfig                  Path to <application>.runtimeconfig.json file.

path-to-application:
  The path to an application .dll file to execute.

Usage: dotnet [sdk-options] [command] [command-options] [arguments]

Execute a .NET SDK command.

sdk-options:
  -d|--diagnostics  Enable diagnostic output.
  -h|--help         Show command line help.
  --info            Display .NET information.
  --list-runtimes   Display the installed runtimes.
  --list-sdks       Display the installed SDKs.
  --version         Display .NET SDK version in use.

SDK commands:
  add               Add a package or reference to a .NET project.
  build             Build a .NET project.
  build-server      Interact with servers started by a build.
  clean             Clean build outputs of a .NET project.
  format            Apply style preferences to a project or solution.
  help              Show command line help.
  list              List project references of a .NET project.
  msbuild           Run Microsoft Build Engine (MSBuild) commands.
  new               Create a new .NET project or file.
  nuget             Provides additional NuGet commands.
  pack              Create a NuGet package.
  publish           Publish a .NET project for deployment.
  remove            Remove a package or reference from a .NET project.
  restore           Restore dependencies specified in a .NET project.
  run               Build and run a .NET project output.
  sdk               Manage .NET SDK installation.
  sln               Modify Visual Studio solution files.
  store             Store the specified assemblies in the runtime package store.
  test              Run unit tests using the test runner specified in a .NET project.
  tool              Install or manage tools that extend the .NET experience.
  vstest            Run Microsoft Test Engine (VSTest) commands.
  workload          Manage optional workloads.

Additional commands from bundled tools:
  dev-certs         Create and manage development certificates.
  fsi               Start F# Interactive / execute F# scripts.
  sql-cache         SQL Server cache command-line tools.
  user-secrets      Manage development user secrets.
  watch             Start a file watcher that runs a command when files change.

Run 'dotnet [command] --help' for more information on a command.

://////////////////////////////////////////////////

SET DOTNET_CLI_TELEMETRY_OPTOUT=1

SET PATH=%PATH%;%ProgramFiles%\dotnet\

SET PATH=%PATH%;%USERPROFILE%\.dotnet\tools

