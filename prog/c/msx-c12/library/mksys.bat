rem Make MSX-C Library System Disk in Current Drive with %1:
rem "Usege: 1. Copy this Batch File into Remake System Disk
rem "       2. And  mksys <d>"
rem Ex: A>mksys b

pause Insert MSX-DOS TOOLS System Disk in %1:
copy %1:msxdos.sys
copy %1:command.com
copy %1:m80.com
copy %1:l80.com

pause Insert MSX-C System Disk in %1:
copy %1:cf.com
copy %1:cg.com
copy %1:fpc.com
copy %1:stdio.h
copy %1:bdosfunc.h
copy %1:ck.rel
copy %1:clib.rel
copy %1:crun.rel
copy %1:cend.rel
copy %1:lib.tco

pause Insert MSX-C Library System Disk in %1:
copy %1:glib.h
copy %1:math.h
copy %1:curses.h
copy %1:msxbios.h
copy %1:msxc.bat
copy %1:mlib.rel
copy %1:mlib.tco

dir
rem 21 Files Copied
                                                       