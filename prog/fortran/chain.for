C
C THIS ROUTINE DEMOSTRATES THE 'CHAIN' FUNCTION, ALL IT
C DOES IS REQUEST THE NAME OF THE PROGRAM TO CHAIN TO
C AND THEN CHAIN.
	DIMENSION IF(3)
	TYPE 'FILE?'
C
C GET THE FILENNAME TO CHAIN TO
C
	READ (0,1) IF
1	FORMAT (3A6)
C
C CHAIN	TOO IT
C
	CALL CHAIN (IF,IER)
C
C ONLY GETS HERE IF AN ERROR HAPPENS
C
	TYPE 'ERROR FROM CHAIN = ',IER
	CALL EXIT
	END
OO ITяяяя   0000          EfO[EJ    $   jE0  END OF SYMBOL TABLE  12-12-82,0,0,0 12-12-820,0 12-12-82A9         яA9 A9ееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее