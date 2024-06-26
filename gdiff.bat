@ECHO OFF


GOTO //////////////////////////////////////////////////

git-difftool - Show changes using common diff tools

SYNOPSIS
git difftool [<options>] [<commit> [<commit>]] [--] [<path>�?]

DESCRIPTION
git difftool is a Git command that allows you to compare and edit files between revisions using common diff tools.
git difftool is a frontend to git diff and accepts the same options and arguments. See git-diff(1).

OPTIONS
-d
--dir-diff
Copy the modified files to a temporary location and perform a directory diff on them. This mode never prompts before launching the diff tool.

-y
--no-prompt
Do not prompt before launching a diff tool.

--prompt
Prompt before each invocation of the diff tool. This is the default behaviour; the option is provided to override any configuration settings.

-t <tool>
--tool=<tool>
Use the diff tool specified by <tool>. Valid values include emerge, kompare, meld, and vimdiff. Run git difftool --tool-help for the
 list of valid <tool> settings.

If a diff tool is not specified, git difftool will use the configuration variable diff.tool. If the configuration variable diff.tool
 is not set, git difftool will pick a suitable default.

You can explicitly provide a full path to the tool by setting the configuration variable difftool.<tool>.path. For example, you can
 configure the absolute path to kdiff3 by setting difftool.kdiff3.path. Otherwise, git difftool assumes the tool is available in PATH.

Instead of running one of the known diff tools, git difftool can be customized to run an alternative program by specifying the
 command line to invoke in a configuration variable difftool.<tool>.cmd.

When git difftool is invoked with this tool (either through the -t or --tool option or the diff.tool configuration variable)
 the configured command line will be invoked with the following variables available: $LOCAL is set to the name of the temporary file
 containing the contents of the diff pre-image and $REMOTE is set to the name of the temporary file containing the contents of the
 diff post-image. $MERGED is the name of the file which is being compared. $BASE is provided for compatibility with custom merge 
 tool commands and has the same value as $MERGED.

--tool-help
Print a list of diff tools that may be used with --tool.

--[no-]symlinks
git difftool's default behavior is create symlinks to the working tree when run in --dir-diff mode and the right-hand side of
 the comparison yields the same content as the file in the working tree.

Specifying --no-symlinks instructs git difftool to create copies instead. --no-symlinks is the default on Windows.

-x <command>
--extcmd=<command>
Specify a custom command for viewing diffs. git-difftool ignores the configured defaults and runs $command $LOCAL $REMOTE when
 this option is specified. Additionally, $BASE is set in the environment.

-g
--[no-]gui
When git-difftool is invoked with the -g or --gui option the default diff tool will be read from the configured diff.guitool variable
 instead of diff.tool. The --no-gui option can be used to override this setting. If diff.guitool is not set, we will fallback in the
 order of merge.guitool, diff.tool, merge.tool until a tool is found.

--[no-]trust-exit-code
git-difftool invokes a diff tool individually on each file. Errors reported by the diff tool are ignored by default.
 Use --trust-exit-code to make git-difftool exit when an invoked diff tool returns a non-zero exit code.

git-difftool will forward the exit code of the invoked tool when --trust-exit-code is used.

See git-diff(1) for the full list of supported options.

CONFIG VARIABLES
git difftool falls back to git mergetool config variables when the difftool equivalents have not been defined.

diff.tool
The default diff tool to use.

diff.guitool
The default diff tool to use when --gui is specified.

difftool.<tool>.path
Override the path for the given tool. This is useful in case your tool is not in the PATH.

difftool.<tool>.cmd
Specify the command to invoke the specified diff tool.

See the --tool=<tool> option above for more details.

difftool.prompt
Prompt before each invocation of the diff tool.

difftool.trustExitCode
Exit difftool if the invoked diff tool returns a non-zero exit status.

See the --trust-exit-code option above for more details.

SEE ALSO
git-diff(1)
Show changes between commits, commit and working tree, etc

git-mergetool(1)
Run merge conflict resolution tools to resolve merge conflicts

git-config(1)
Get and set repository or global options

://////////////////////////////////////////////////

git difftool
