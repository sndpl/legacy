rem #### GLIBC.C ==> GLIBC.TCO ####
cf -o%1 glibc
rem #### GLIB.MAC ==> GLIB.LIB ####
mx -lo%1 glib >%1:temp.bat
echo "del %1:*.rel" >>%1:temp.bat
echo gen%2 %1 %3 %4 %5 %6 %7 >>%1:temp.bat
rem #### GLIBC.TCO ==> GLIB.TCO ####
del %1:glib.tco
ren %1:glibc.tco glib.tco
%1:temp
                                                                                                