rem #### CURSESC.C+CURSES2.C ==> CURSES.TCO ####
cf -o%1 cursesc
cf -o%1 curses2
fpc -c %1:curses %1:cursesc %1:curses2
rem #### CURSESC.C ==> CURSES.LIB ####
mx -lo%1 %1:cursesc  >%1:temp.bat
del %1:cursesc.tco
echo "del %1:*.rel" 						>>%1:temp.bat
echo "mx -lo%1 %1:curses2 			>>%1:temp.bat"	>>%1:temp.bat
echo "del %1:curses2.tco" 					>>%1:temp.bat
echo "echo ""del %1:*.rel"" 			>>%1:temp.bat"	>>%1:temp.bat
echo "echo ""lib80 %1:curses=%1:curses2.lib,%1:cursesc.lib/e""	>>%1:temp.bat" >>%1:temp.bat
echo "echo ""ren %1:curses.rel curses.lib"" 	>>%1:temp.bat"	>>%1:temp.bat
echo "echo ""del %1:cursesc.lib"" 		>>%1:temp.bat"	>>%1:temp.bat
echo "echo ""del %1:curses2.lib"" 		>>%1:temp.bat"	>>%1:temp.bat
echo "echo   gen%2 %1 %3 %4 %5 %6 %7 		>>%1:temp.bat"	>>%1:temp.bat
%1:temp
                                                                                           