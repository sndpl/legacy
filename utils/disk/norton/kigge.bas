100 DEFINT A-Z
110 DIMAL[1536],AV[719]
120 '
130 P=PEEK(&HF351)+PEEK(&HF352)*256-65536!
140 FORI=0TO1535
150 IFI=0THENC$=DSKI$(0,1):PRINT".";
160 IFI=512THENC$=DSKI$(0,2):PRINT".";
170 IFI=1024THENC$=DSKI$(0,3):PRINT".";
180 AL[I]=PEEK(P+(IAND511))
190 NEXT
200 '
210 PRINT
220 FORI=0TO719
230 GOSUB330
240 NEXT
250 INPUT "Cluster #";I
260 PRINTHEX$(I)" ";
270 IFI>&HF00ORI=0THENPRINT:PRINT:GOTO250
280 I=AV[I]
290 GOTO260
300 '
310 '
320 '
325 'dette underprogram kn�kker
326 'tregruppen i
327 'allocation tabellen
328 '
330 IFIAND1THEN370
340 PP=3*I\2
350 AV[I]=AL[PP]+256*(AL[PP+1]AND15)
360 RETURN
370 PP=(3*I+1)\2
380 AV[I]=AL[PP]*16+(AL[PP-1]AND240)\16
390 RETURN
                                                               