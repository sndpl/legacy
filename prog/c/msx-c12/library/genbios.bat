rem #### MSXBIOSC.C ==> MSXBIOSC.TCO ####
cf -o%1 msxbiosc
rem #### MSXBIOS.MAC ==> MSXBIOS.LIB ####
mx -lo%1 msxbios >%1:temp.bat
echo "del %1:*.rel" >>%1:temp.bat
echo gen%2 %1 %3 %4 %5 %6 %7 >>%1:temp.bat
rem #### MSXBIOSC.TCO ==> MSXBIOS.TCO ####
del %1:msxbios.tco
ren %1:msxbiosc.tco msxbios.tco
%1:temp
                                                               