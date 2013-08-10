FUNCTION upper(c:CHAR):CHAR;
BEGIN
 IF c IN ['a'..'z'] THEN c:=CHR(ORD(c)-ORD('a')+ORD('A'));
 upper:=c
END;

PROCEDURE DUMP(VAR f:TEXT;start,finish:INTEGER);
{writes a hexadecimal & ASCII dump of memory
 from start to finish to file f}
CONST bytesperline=16;
         {for screens of width of 72 or more}
VAR i,cur:INTEGER;
    ch:CHAR;
BEGIN
 cur:=start;
 WHILE cur<finish DO
  BEGIN
   WRITE(f,cur:4:H);
   FOR i:=cur TO cur+bytesperline-1 DO
      WRITE(f,' ',ORD(PEEK(i,CHAR)):2:H);
   WRITE(f,' ':3);
   FOR i:=cur TO cur+bytesperline-1 DO
    BEGIN 
     ch:=PEEK(i,CHAR);
     IF ch>CHR(127) THEN ch:=CHR(ORD(ch)-128);
     IF ch<' ' THEN ch:='.';
     WRITE(f,ch)
    END;
   cur:=cur+bytesperline;
   WRITELN(f)
  END
END;

FUNCTION READHEX(VAR f:TEXT):INTEGER;
{Reads a hex number from the file f}
VAR res,i:INTEGER;
BEGIN
 res:=0;i:=0;
 WHILE NOT(f^ IN ['0'..'9','A'..'F']) DO GET(f);
 REPEAT
  res:=res*16+i;
  IF f^ IN ['0'..'9'] THEN i:=ORD(f^)-ORD('0') ELSE
  IF f^ IN ['A'..'F'] THEN i:=ORD(f^)-ORD('A')+10 ELSE
  IF f^ IN ['a'..'f'] THEN i:=ORD(f^)-ORD('a')+10 ELSE
  i:=-1;
  IF i<>-1 THEN GET(f)
UNTIL i=-1;
 READHEX:=res
END;
E
  IF f^ IN ['a'..'f'] THEN i:=ORD(f^)-ORD('a')+10 ELSE
  i:=-1;
  IF i<>-1 THE� � �
lm�\ ����%2�� � *         oq   � owing X is the maximum file size9  	 n  e      emble     T tablesize=31; {  X*4-1}
      fsize=64;     {  X*8 }
      gsize=1;
      datasize=30;

TYPE flag=(B,W,S,M); {Byte, Word, Space, Message }
     filename=ARRAY [1..14] OF CHAR;
     datarec=RECORD
                 sta,fin:INTEGER;
                 type:flag
             END;

VAR runstart,codestart,finish,size:INTEGER;
    i,ch,oldcx,cx,dnext,olddx,dx:INTEGER;
    com:CHAR;
    Xreg:(HL,IX,IY);
    firstdone,indexed:BOOLEAN;
    opc:0..63;
    typ,top2:0..3;
    top,bot:0..7;
    legal,meslegal,mesilleg,allchars: SET OF CHAR;
    data:ARRAY[1..datasize] OF datarec;
    table:ARRAY[0..tablesize] OF SET OF 0..255;
    dfile:TEXT;
    infile:TEXT[fsize];
    gfile: TEXT[gsize];
    fname:filename;

{$F HEX }

PROCEDURE getfname;
VAR i:1..11;
    ch:CHAR;
BEGIN
 ch:=PEEK(#5C,CHAR);
 IF ch=CHR(0) THEN ch:=' ' ELSE ch:=CHR(64+ORD(ch));
 fname[1]:=ch;
 FOR i:=1 TO  8 DO fname[i+2]:=PEEK(#5C+i,CHAR);
 FOR i:=9 TO 11 DO fname[i+3]:=PEEK(#5C+i,CHAR)
END;

PROCEDURE DataEn   ,hi:INTEGER;f:flag);
VAR i,j:INTEGER;cur:datarec;
BEGIN
  WITH cur DO
    BEGIN
     sta:=lo-runstart;fin:=hi-runstart;type:=f
    END;
  data[dnext]:=cur;
  i:=1;
  WHILE cur.sta>data[i].sta DO i:=i+1;
  FOR j:=dnext DOWNTO i DO data[j+1]:=data[j];
  dnext:=dnext+1;
  data[i]:=cur
END;

PROCEDURE EnterCommand(f:flag);
BEGIN
 DataEnter(READHEX(INPUT),READHEX(INPUT),f)
END;

{ K command - removes data area i where i is as given by the D command }
PROCEDURE KillData;
VAR i,j:INTEGER;
BEGIN
 READ(i);
 dnext:=dnext-1;
 FOR j:=i TO dnext DO data[j]:=data[j+1]
END;

{ D command - displays the current data  areas }
PROCEDURE ListData(VAR f:TEXT);
VAR i:INTEGER;
BEGIN
  FOR i:=1 TO dnext-1 DO
       WITH data[i] DO
           BEGIN
               WRITE(f,i,sta+runstart:6:H,fin+runstart:6:H);
               CASE type OF
               B: WRITE(f,'  Byte');
               M: WRITE(f,'  Mess');
               S: WRITE(f,'  Space');
               W: WRITE(f,'  Word')
               END;
               WRITELN(f)
          END
END;

PROCEDURE extdis;
BEGIN
 fname[12]:='D';fname[13]:='I';fname[14]:='S';
END;

{ P command saves the address and data information to .DIS file }
PROCEDURE Put;
BEGIN
 extdis;
 REWRITE(dfile,fname);
 WRITELN(dfile,runstart:4:H,finish:6:H);
 ListData(dfile)
END;

{ R command retrives the info from a .DIS file - useful if
  you have made a lot of mistakes }
PROCEDURE Get;
VAR lo,hi,junk:INTEGER; f:flag;
BEGIN
 extdis;
 RESET(dfile,fname);
 dnext:=1;
 runstart:=READHEX(dfile);
 finish:=READHEX(