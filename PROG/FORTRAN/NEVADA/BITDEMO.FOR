C
C THIS PROGRAM DEMOSTRATES THE USE OF THE SET FUNCTION OF
C THE "BIT" ROUTINE.  YOU ENTER	THE BIT	TO BE SET AND
C CAN SEE EXACTLY WHICH	BIT IS CHANGED.
C
1	A=0
	ACCEPT 'BIT? ',B
	IF (B .GT. 47) THEN
		TYPE 'INVALID BIT NUMBER, ONLY 0-47'
		GO TO 1
		ENDIF
	IF (B .LT. 0)STOP
C
C SET THE BIT
C
	CALL BIT (A,B,'S')
C
C OUTPUT THE WORD IN HEX FORMAT
C
	WRITE (1,2) A
2	FORMAT (K12)
	GOTO 1
	END

C SET THE BIT
C
	CALL BIT (A,B,'S')
C
C OUTPUT THE WORD IN HEX FORMAT
C
	WRITE (1,2) Aееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее