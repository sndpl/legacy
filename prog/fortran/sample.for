C
C THIS IS A SAMPLE PROGRAM SHOWING HOW TO HANDLE THE
C CURSOR AND CLEAR SCREEN FUNCTIONS IS A CRT
C
	PAUSE 'CLEAR SCREEN'
	CALL SCREEN (1,0,0)
C
C WRITE THE LINE NUMBERS OUT FROM THE BOTTOM
C LINE TO THE TOP
C
	DO 10 I=23,0,-1
	CALL SCREEN (2,0,I)
	WRITE (1,2) I
2	FORMAT ('LINE ',I2,Z)
10	CONTINUE
C
C WAIT 5 SECONDS
C
	CALL DELAY (500)
C
C CLEAR THE SCREEN AGAIN
C
	CALL SCREEN(1,0,0)
	ACCEPT 'ENTER ANY NUMBER ',A
	I=AMOD(A,300)+1
	DO 99 J=1,I
99	Z=RAND(0)
C
C AGAIN CLEAR IT
C
	CALL SCREEN(1,0,0)
C
C NOW PUT RANDOM PLUS SIGNS ALL	OVER THE SCREEN
C
	DO 40 I=1,400
C
C GET NEXT SCREEN POSITION AND GO THERE
C
	CALL SCREEN(2,IFIX(RAND(0)*80),IFIX(RAND(0)*23))
C
C PUT THE + ON THE SCREEN
C
40	CALL PUT (CHAR('+',0))
C
	CALL DELAY(500)
C
C OUTPUT A BELL
C
	CALL SCREEN(5,0,0)
C
C CLEAR	IT NOW
C
	CALL SCREEN(1,0,0)
	CALL EXIT
	END
	SUBROUTINE SCREEN(FUNCT,X,Y)C
C THIS IS A SAMPLE SCREEN DRIVER FOR AN	ADM-3A TERMINAL
C
	INTEGER	FUNCT,X,Y
	IF (FUNCT .LE. 0.OR.FUNCT .GT. 5)RETURN
C
C FUNCTION:
C
C	1=CLEAR	SCREEN
C	2=POSITION CURSOR
C	3=SET REVERSE VIDEO
C	4=SET NORMAL VIDEO
C	5=BELL
C
	GO TO (100,200,300,400,500),FUNCT
C
C CLEAR	SCREEN
C
100	CALL PUT (12)
	RETURN
C
C SET CURSOR TO	X,Y
C
200	CALL PUT(27)
	CALL PUT(102)
	CALL PUT(X+32)
	CALL PUT(Y+32)
	RETURN
C
C SET REVERSE VIDEO
C
300	RETURN
C
C SET NORMAL VIDEO
C
400	RETURN
C
C OUTPUT A BELL
C
500	CALL PUT(7)
	RETURN
	END
ċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċċ