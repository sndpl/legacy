rem #### MATHC.C+PRSC.C ==> MATH.TCO ####
cf -o%1 mathc
cf -o%1 prsc
fpc -c %1:math %1:prsc %1:mathc
del %1:mathc.tco
rem #### MATHMAC.MAC+PRSC.C ==> MATH.LIB ####
mx -lo%1 mathmac >%1:temp.bat
echo "del %1:*.rel" 					>>%1:temp.bat
echo "mx -lo%1 %1:prsc 			>>%1:temp.bat"	>>%1:temp.bat
echo "del %1:prsc.tco"					>>%1:temp.bat
echo "echo ""del %1:*.rel"" 		>>%1:temp.bat"	>>%1:temp.bat
echo "echo ""lib80 %1:math=%1:prsc.lib,%1:mathmac.lib/e"" >>%1:temp.bat" >>%1:temp.bat
echo "echo ""ren %1:math.rel math.lib"" >>%1:temp.bat"	>>%1:temp.bat
echo "echo ""del %1:mathmac.lib"" 	>>%1:temp.bat"	>>%1:temp.bat
echo "echo ""del %1:prsc.lib"" 		>>%1:temp.bat"	>>%1:temp.bat
echo "echo   gen%2 %1 %3 %4 %5 %6 %7	>>%1:temp.bat"	>>%1:temp.bat
%1:temp
      