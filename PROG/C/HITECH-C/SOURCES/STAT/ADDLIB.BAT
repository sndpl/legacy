REM Vervang STAT.OBJ in standaard Hitech C library door MSX-versie.
REM Dit werkt alleen als de aangepaste CONVTIME ook in libc.lib
REM gečnstalleerd is (voor het vertalen van de MSXDOS datum en tijd
REM naar UNIX formaat).
PAUSE
libr r libc.lib stat.obj

                                                                                                                        