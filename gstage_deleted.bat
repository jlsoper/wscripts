@ECHO OFF


GOTO //////////////////////////////////////////////////

usage: git [-v | --version] [-h | --help] [-C <path>] [-c <name>=<value>]
           [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]
           [-p | --paginate | -P | --no-pager] [--no-replace-objects] [--bare]
           [--git-dir=<path>] [--work-tree=<path>] [--namespace=<name>]
           [--config-env=<name>=<envvar>] <command> [<args>]

These are common Git commands used in various situations:

start a working area (see also: git help tutorial)
   clone     Clone a repository into a new directory
   init      Create an empty Git repository or reinitialize an existing one

work on the current change (see also: git help everyday)
   add       Add file contents to the index
   mv        Move or rename a file, a directory, or a symlink
   restore   Restore working tree files
   rm        Remove files from the working tree and from the index

examine the history and state (see also: git help revisions)
   bisect    Use binary search to find the commit that introduced a bug
   diff      Show changes between commits, commit and working tree, etc
   grep      Print lines matching a pattern
   log       Show commit logs
   show      Show various types of objects
   status    Show the working tree status

grow, mark and tweak your common history
   branch    List, create, or delete branches
   commit    Record changes to the repository
   merge     Join two or more development histories together
   rebase    Reapply commits on top of another base tip
   reset     Reset current HEAD to the specified state
   switch    Switch branches
   tag       Create, list, delete or verify a tag object signed with GPG

collaborate (see also: git help workflows)
   fetch     Download objects and refs from another repository
   pull      Fetch from and integrate with another repository or a local branch
   push      Update remote refs along with associated objects

'git help -a' and 'git help -g' list available subcommands and some
concept guides. See 'git help <command>' or 'git help <concept>'
to read about a specific subcommand or concept.
See 'git help git' for an overview of the system.


:::::::::::

usage: git ls-files [<options>] [<file>...]

    -z                    separate paths with the NUL character
    -t                    identify the file status with tags
    -v                    use lowercase letters for 'assume unchanged' files
    -f                    use lowercase letters for 'fsmonitor clean' files
    -c, --cached          show cached files in the output (default)
    -d, --deleted         show deleted files in the output
    -m, --modified        show modified files in the output
    -o, --others          show other files in the output
    -i, --ignored         show ignored files in the output
    -s, --stage           show staged contents' object name in the output
    -k, --killed          show files on the filesystem that need to be removed
    --directory           show 'other' directories' names only
    --eol                 show line endings of files
    --empty-directory     don't show empty directories
    -u, --unmerged        show unmerged files in the output
    --resolve-undo        show resolve-undo information
    -x, --exclude <pattern>
                          skip files matching pattern
    -X, --exclude-from <file>
                          read exclude patterns from <file>
    --exclude-per-directory <file>
                          read additional per-directory exclude patterns in <file>
    --exclude-standard    add the standard git exclusions
    --full-name           make the output relative to the project top directory
    --recurse-submodules  recurse through submodules
    --error-unmatch       if any <file> is not in the index, treat this as an error
    --with-tree <tree-ish>
                          pretend that paths removed since <tree-ish> are still present
    --abbrev[=<n>]        use <n> digits to display object names
    --debug               show debugging data
    --deduplicate         suppress duplicate entries
    --sparse              show sparse directories in the presence of a sparse index
    --format <format>     format to use for the output

://////////////////////////////////////////////////

git ls-files -d > %temp%\git_ls-files--deleted.txt

for /F "tokens=1" %%g IN (%temp%\git_ls-files--deleted.txt) do git add %%g
