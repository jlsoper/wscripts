@ECHO OFF


GOTO //////////////////////////////////////////////////

C:\>start /?

Starts a separate window to run a specified program or command.

START ["title"] [/D path] [/I] [/MIN] [/MAX] [/SEPARATE | /SHARED]
      [/LOW | /NORMAL | /HIGH | /REALTIME | /ABOVENORMAL | /BELOWNORMAL]
      [/NODE <NUMA node>] [/AFFINITY <hex affinity mask>] [/WAIT] [/B]
      [command/program] [parameters]

    "title"     Title to display in window title bar.
    path        Starting directory.
    B           Start application without creating a new window. The
                application has ^C handling ignored. Unless the application
                enables ^C processing, ^Break is the only way to interrupt
                the application.
    I           The new environment will be the original environment passed
                to the cmd.exe and not the current environment.
    MIN         Start window minimized.
    MAX         Start window maximized.
    SEPARATE    Start 16-bit Windows program in separate memory space.
    SHARED      Start 16-bit Windows program in shared memory space.
    LOW         Start application in the IDLE priority class.
    NORMAL      Start application in the NORMAL priority class.
    HIGH        Start application in the HIGH priority class.
    REALTIME    Start application in the REALTIME priority class.
    ABOVENORMAL Start application in the ABOVENORMAL priority class.
    BELOWNORMAL Start application in the BELOWNORMAL priority class.
    NODE        Specifies the preferred Non-Uniform Memory Architecture (NUMA)
                node as a decimal integer.
    AFFINITY    Specifies the processor affinity mask as a hexadecimal number.
                The process is restricted to running on these processors.

                The affinity mask is interpreted differently when /AFFINITY and
                /NODE are combined.  Specify the affinity mask as if the NUMA
                node's processor mask is right shifted to begin at bit zero.
                The process is restricted to running on those processors in
                common between the specified affinity mask and the NUMA node.
                If no processors are in common, the process is restricted to
                running on the specified NUMA node.  
    WAIT        Start application and wait for it to terminate.
    command/program
                If it is an internal cmd command or a batch file then
                the command processor is run with the /K switch to cmd.exe.
                This means that the window will remain after the command
                has been run.

                If it is not an internal cmd command or batch file then
                it is a program and will run as either a windowed application
                or a console application.

    parameters  These are the parameters passed to the command/program.

NOTE: The SEPARATE and SHARED options are not supported on 64-bit platforms.

Specifying /NODE allows processes to be created in a way that leverages memory
locality on NUMA systems.  For example, two processes that communicate with
each other heavily through shared memory can be created to share the same
preferred NUMA node in order to minimize memory latencies.  They allocate
memory from the same NUMA node when possible, and they are free to run on
processors outside the specified node.

    start /NODE 1 application1.exe
    start /NODE 1 application2.exe

These two processes can be further constrained to run on specific processors
within the same NUMA node.  In the following example, application1 runs on the
low-order two processors of the node, while application2 runs on the next two
processors of the node.  This example assumes the specified node has at least
four logical processors.  Note that the node number can be changed to any valid
node number for that computer without having to change the affinity mask.

    start /NODE 1 /AFFINITY 0x3 application1.exe
    start /NODE 1 /AFFINITY 0xc application2.exe

If Command Extensions are enabled, external command invocation
through the command line or the START command changes as follows:

non-executable files may be invoked through their file association just
    by typing the name of the file as a command.  (e.g.  WORD.DOC would
    launch the application associated with the .DOC file extension).
    See the ASSOC and FTYPE commands for how to create these
    associations from within a command script.

When executing an application that is a 32-bit GUI application, CMD.EXE
    does not wait for the application to terminate before returning to
    the command prompt.  This new behavior does NOT occur if executing
    within a command script.

When executing a command line whose first token is the string "CMD "
    without an extension or path qualifier, then "CMD" is replaced with
    the value of the COMSPEC variable.  This prevents picking up CMD.EXE
    from the current directory.

When executing a command line whose first token does NOT contain an
    extension, then CMD.EXE uses the value of the PATHEXT
    environment variable to determine which extensions to look for
    and in what order.  The default value for the PATHEXT variable
    is:

        .COM;.EXE;.BAT;.CMD

    Notice the syntax is the same as the PATH variable, with
    semicolons separating the different elements.

When searching for an executable, if there is no match on any extension,
then looks to see if the name matches a directory name.  If it does, the
START command launches the Explorer on that path.  If done from the
command line, it is the equivalent to doing a CD /D to that path.

:::::::::::

C:\>mode /?

Configures system devices.

Serial port:       MODE COMm[:] [BAUD=b] [PARITY=p] [DATA=d] [STOP=s]
                                [to=on|off] [xon=on|off] [odsr=on|off]
                                [octs=on|off] [dtr=on|off|hs]
                                [rts=on|off|hs|tg] [idsr=on|off]

Device Status:     MODE [device] [/STATUS]

Redirect printing: MODE LPTn[:]=COMm[:]

Select code page:  MODE CON[:] CP SELECT=yyy

Code page status:  MODE CON[:] CP [/STATUS]

Display mode:      MODE CON[:] [COLS=c] [LINES=n]

Typematic rate:    MODE CON[:] [RATE=r DELAY=d]


MODE [width],[height]


://////////////////////////////////////////////////

:::: start
:::: start cmd

mode con: cols=228 lines=60

