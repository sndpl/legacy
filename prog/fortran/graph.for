OPTIONS	X
C
C GRAPH	SINE FUNCTION FROM -PI TO PI IN	INCREMENT OF .12
C
	DIMENSION LINE(70)
	INTEGER	WHERE
C
C OPEN UNIT 6 TO WRITE TO CONSOLE
C
	CALL OPEN (6,'CON:')
C
C WRITE	TITLE
C
	WRITE (6,2)
2	FORMAT (28X,'GRAPH OF SIN')
	TYPE
	TYPE
C
C SET PI AND -PI
C
	PI=3.1415926
	MPI=-PI
C
C MAIN LOOP
C
	DO 100 ANGLE=MPI,PI,.12
C
C FIGURE OUT WHICH ELEMENT IN ARRAY SHOULD BE SET TO *,
C SIN RETURNS -1 TO 1 WHICH IS CONVERTED TO -35	TO 35
C AND THEN OFFSET SO FINAL RANGE IS 1 TO 70
C
	WHERE=SIN(ANGLE)*35+35
C
C FIGURE OUT HOW MUCH TO BLANK IN THE OUTPUT ARRAY
C
	IBLANK=MAX0(35,WHERE)
C
C AND BLANK IT
C
	DO 15 I=1,IBLANK
15	LINE(I)=' '
C
C HMM... WHICH SIDE OF ZERO ARE	WE ON?
C
	IF (WHERE .GT. 35)  THEN
C
C RIGHT	SIDE
C
			DO 20 I=36,WHERE
20			LINE(I)='*'
			    ELSE
C
C LEFT SIDE
C
			DO 30 I=WHERE,35
30			LINE(I)='*'
			    ENDIF
C
C SET "ZERO"
C
	LINE(35)='+'
C
C AND THE SIN VALUE
C
	LINE(WHERE)='*'
C
C IF THIS VALUE	IS < 35, SET SO	WE OUTPUT TO ZERO LINE
C
	IF (WHERE .LE. 35)WHERE=35
C
C AND FINALLY OUTPUT THE LINE
C
	WRITE (6,21) (LINE(I),I=1,WHERE)
21	FORMAT (70A1)
100	CONTINUE
	CALL EXIT
	END
ATAL* Invalid drive specifier+*FATAL* No filename found on COPY statement(*FATAL* File specified on COPY not foundяяяя   0000          EfO[EJ    $   jE0  END OF SYMBOL TABLE  12-12-82,0,0,0 12-12-820,0 12-12-82A9         яA9 A9ееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее