rem Make Library Remake System Disk in Current Drive with %1:
rem "Usege: 1. Copy this Batch File into Remake System Disk
rem "       2. And  forremk <d>"
rem Ex: A>forremk b

pause Insert MSX-DOS TOOLS System Disk in %1:
copy %1:msxdos.sys
copy %1:command.com
copy %1:m80.com
copy %1:lib80.com

pause Insert MSX-C System Disk in %1:
copy %1:cf.com
copy %1:cg.com
copy %1:fpc.com
copy %1:arel.bat
copy %1:crel.bat
copy %1:stdio.h
copy %1:bdosfunc.h

pause Insert MSX-C Library System Disk in %1:
copy %1:mx.com
copy %1:echo.com
copy %1:genall.bat
copy %1:genglib.bat
copy %1:genmath.bat
copy %1:gencurs.bat
copy %1:genbios.bat
copy %1:genmlib.bat
copy %1:gentco.bat
copy %1:gen.bat
copy %1:glib.h
copy %1:math.h
copy %1:curses.h
copy %1:msxbios.h
copy %1:glibc.c
copy %1:glib.mac
copy %1:mathc.c
copy %1:mathmac.mac
copy %1:prsc.c
copy %1:cursesc.c
copy %1:curses2.c
copy %1:msxbiosc.c
copy %1:msxbios.mac

dir
rem 34 Files copied
                                             