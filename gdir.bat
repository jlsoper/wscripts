@ECHO OFF


GOTO //////////////////////////////////////////////////

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

git ls-files --eol
