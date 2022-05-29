@ECHO OFF


GOTO //////////////////////////////////////////////////

Visual Studio Code 1.67.2

Usage: code.exe [options][paths...]

To read output from another program, append '-' (e.g. 'echo Hello World | code.exe -')

Options
  -d --diff <file> <file>           Compare two files with each other.
  -a --add <folder>                 Add folder(s) to the last active window.
  -g --goto <file:line[:character]> Open a file at the path on the specified
                                    line and character position.
  -n --new-window                   Force to open a new window.
  -r --reuse-window                 Force to open a file or folder in an
                                    already opened window.
  -w --wait                         Wait for the files to be closed before
                                    returning.
  --locale <locale>                 The locale to use (e.g. en-US or zh-TW).
  --user-data-dir <dir>             Specifies the directory that user data is
                                    kept in. Can be used to open multiple
                                    distinct instances of Code.
  -h --help                         Print usage.

Extensions Management
  --extensions-dir <dir>              Set the root path for extensions.
  --list-extensions                   List the installed extensions.
  --show-versions                     Show versions of installed extensions,
                                      when using --list-extensions.
  --category <category>               Filters installed extensions by provided
                                      category, when using --list-extensions.
  --install-extension <ext-id | path> Installs or updates an extension. The
                                      argument is either an extension id or a
                                      path to a VSIX. The identifier of an
                                      extension is '${publisher}.${name}'. Use
                                      '--force' argument to update to latest
                                      version. To install a specific version
                                      provide '@${version}'. For example:
                                      'vscode.csharp@1.2.3'.
  --pre-release                       Installs the pre-release version of the
                                      extension, when using
                                      --install-extension
  --uninstall-extension <ext-id>      Uninstalls an extension.
  --enable-proposed-api <ext-id>      Enables proposed API features for
                                      extensions. Can receive one or more
                                      extension IDs to enable individually.

Troubleshooting
  -v --version                    Print version.
  --verbose                       Print verbose output (implies --wait).
  --log <level>                   Log level to use. Default is 'info'. Allowed
                                  values are 'critical', 'error', 'warn',
                                  'info', 'debug', 'trace', 'off'.
  -s --status                     Print process usage and diagnostics
                                  information.
  --prof-startup                  Run CPU profiler during startup.
  --disable-extensions            Disable all installed extensions.
  --disable-extension <ext-id>    Disable an extension.
  --sync <on | off>               Turn sync on or off.
  --inspect-extensions <port>     Allow debugging and profiling of extensions.
                                  Check the developer tools for the connection
                                  URI.
  --inspect-brk-extensions <port> Allow debugging and profiling of extensions
                                  with the extension host being paused after
                                  start. Check the developer tools for the
                                  connection URI.
  --disable-gpu                   Disable GPU hardware acceleration.
  --max-memory <memory>           Max memory size for a window (in Mbytes).
  --telemetry                     Shows all telemetry events which VS code
                                  collects.


://////////////////////////////////////////////////

W:\VSCode\bin\code --extensions-dir %HOME%\vscode\extensions --user-data-dir %HOME%\vscode\user-data

