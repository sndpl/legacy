10 DEFSNG A-Z
20 SCREEN 2:FOR B=0 TO 127:X4=B*B:M=-128:A=SQR(16384-X4):FOR I=-A TO A STEP 3:R=SQR(X4+I*I)/128:F=COS(16*R)*(1-R)*2
30 Y=I/5+F*32:IF Y>M THEN M=Y:Y=96+Y:X=128+B:C=191-Y
40 PSET (X,C):X=128-B
50 PSET (X,C)
60 NEXT I:NEXT B
70 IF INKEY$="" THEN 70
80 END
                                                                                                            