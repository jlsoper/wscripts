@ECHO OFF


GOTO //////////////////////////////////////////////////

usage: git archive [<options>] <tree-ish> [<path>...]
   or: git archive --list
   or: git archive --remote <repo> [--exec <cmd>] [<options>] <tree-ish> [<path>...]
   or: git archive --remote <repo> [--exec <cmd>] --list

    --format <fmt>        archive format
    --prefix <prefix>     prepend prefix to each pathname in the archive
    --add-file <file>     add untracked file to archive
    --add-virtual-file <path:content>
                          add untracked file to archive
    -o, --output <file>   write the archive to this file
    --worktree-attributes
                          read .gitattributes in working directory
    -v, --verbose         report archived files on stderr
    --mtime <time>        set modification time of archive entries
    -NUM                  set compression level

    -l, --list            list supported archive formats

    --remote <repo>       retrieve the archive from remote repository <repo>
    --exec <command>      path to the remote git-upload-archive command


:::::::::::

git archive --format=zip -o %TEMP%\gitRepo.zip master

://////////////////////////////////////////////////

if not exist .git\ GOTO howTO

git branch --show-current > %TEMP%\gitRepoBranch.txt

for /F "tokens=1" %%g IN (%TEMP%\gitRepoBranch.txt) do git archive --format=zip -o %TEMP%\gitRepo.zip %%g

GOTO END

:howTO

ECHO "Invalid directory or location. Run from top-level directory of Git Repository!"

:END

