C
C "LOAD.FOR"
C
C THIS ROUTINE DEMOSTRATES THE USE OF THE 'LOAD' ROUTINE
C TO LOAD AN ASSEMBLY LANGUAGE FILE INTO MEMORY	AND
C THEN CALL IT FORM FORTRAN
C
	INTEGER	A
C
C FIND OUT WHICH ONE TO	LOAD
C
	TYPE 'Enter 0 to "LOAD" LD.HEX'
	TYPE 'Enter 1 to "LOAD" LD.OBJ'
	ACCEPT 'Which one: ',LTYPE
C
	IF (LTYPE .EQ. 0) THEN
			TYPE '"LOAD"ing "LD.HEX"'
			 ELSE
			TYPE '"LOAD"ing "LD.OBJ"'
			 ENDIF
C
C MUST LOAD "LD.HEX" OR	"LD.OBJ" INTO MEMORY 
C BEFORE WE CAN CALL IT
C
	CALL LOAD ('LD',LTYPE,IER)
C
	TYPE 'ERROR FOR LOAD=',IER
C
C CHECK	THE RETURNED ERROR CODE	FROM LOAD
C
	IF (IER	.NE. 0)STOP 'LOAD ERROR'
C
C "CALL" THE ROUTINE
C
	A=CALL ($8000,1)
C
C RESULT SHOULD	BE 2
C
	TYPE 'THE RESULT OF THE ASSEMBLY ROUTINE IS: ',A
	CALL EXIT
	END
����   0000          EfO[EJ    $   jE0  END OF SYMBOL TABLE  12-12-82,0,0,0 12-12-820,0 12-12-82A9         �A9 A9