OPTIONS	X,Q
C
C "RAND.FOR"
C
C THIS PROGRAM GENERATES A SEQUENCE OF RANDOM NUMBERS,
C DIVIDES THEM INTO 10 INTERVALS AND COUNTS HOW MANY
C RANDOM NUMBER FALL INTO EACH INTERVAL.  FINALLY IT
C PRINTS OUT THE COUNTS OF EACH INTERVAL.
C 
	DIMENSION NUM(10)
	DATA NUM/10*0/
	INTEGER	T,A,D,FLAG,TIME(6),DATE(6),START,END
99	DO 50 I=1,10
50	NUM(I)=0
	ACCEPT 'How many? ',K
	DO 1 I=1,K
	L=RAND(0)*10+1
1	NUM(L)=NUM(L)+1
	TYPE NUM
	GO TO 99
	END
ееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее