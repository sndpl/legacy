echo Make MSX-C Disk in Current Drive with %1:
rem "Usage: 1. Copy this Batch File into Formatted Disk"
rem "		ex. A>copy b:\batch\mksys.bat \"
rem "       2. And  mksys <d>"
rem "		ex. A>mksys b"

pause Insert MSX-DOS2 Master Disk in %1:
copy %1:\msxdos2.sys+%1:\command2.com \

mkdir \bin
mkdir \include

pause Insert MSX-DOS2 TOOLS Master Disk in %1:
copy %1:\?80.com \bin

pause Insert MSX-C Master Disk in %1:
copy %1:\c?.com+%1:\fpc.com+%1:\lib.tco \bin
copy %1:\include \include
copy %1:\c???.rel+%1:\c.bat+%1:\batch\cenv.bat

echo "Execute cenv.bat before starting compile"
echo "Example  A>cenv a"
echo "  and    A>c file"
                                                                                                                 