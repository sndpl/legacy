rem #### *.TCO ==> MLIB.TCO ####
fpc -c %1:mlib  %1:curses %1:glib %1:msxbios %1:math
gen%2 %1 %3 %4 %5 %6 %7
              