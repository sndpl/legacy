rem #### CURSES/GLIB/MSXBIOS/MATH.LIB ==> MLIB.LIB ####
del %1:mlib.rel
lib80 %1:mlib=%1:curses.lib,%1:glib.lib,%1:msxbios.lib,%1:math.lib/e
ren %1:mlib.rel mlib.lib
gen%2 %1 %3 %4 %5 %6 %7
                                                            