OPTIONS	X
C
C THIS PROGRAM DEMOSTRATES THE USE OF THE DUMP STATEMENT.
C
C CALL 'X' FOR TRACEBACK PRINTOUT (JUST	FOR SHOW)
C

	CALL X
	END
OPTIONS	X
	SUBROUTINE X
C
C DEFINE THE DUMP STATEMENT TO BE USED IN CASE OF AN
C ERROR, WITH DUMP ID OF 'ROUTINE-X'
C

	DUMP /ROUTINE-X/ I,J,K
	I=1
	J=2
	K=I+J
C
C CREATE AN ERROR TO CAUSE DUMP	STATEMENT TO BE	ACTIVE
C
	Z=1/0
	END

C

	DUMP /ROUTINE-X/ I,J,K
	I=1
	J=2
	K=I+J
C
C CREATE AN ERROR TO CAUSE DUMP	STATEMENT TO BE	ACTIVE
C
	Z=1ееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее