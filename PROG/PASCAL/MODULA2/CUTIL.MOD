IMPLEMENTATION MODULE CUTIL;
FROM Terminal IMPORT WriteString, GotoXY, ReadChar, WriteChar;
FROM Strings IMPORT Append, Length, Copy, Insert, Delete;

PROCEDURE ShowCursor(Visible: BOOLEAN);
BEGIN
	WriteChar(33C);
	IF NOT(Visible) THEN WriteChar('x');
	ELSE WriteChar('y'); END;
	WriteChar('5');
END ShowCursor;

PROCEDURE Blank(x: CARDINAL);
    (* Blanks the screen and homes cursor if x=0
    If x>99 prints x DIV 100 LINEFEEDS
    then prints 1-99 [x MOD 100] blanks at current position
    *)
VAR y: CARDINAL;
BEGIN
    IF x=0 THEN WriteChar(14C); (*BLANK SCREEN*)
    ELSE
	FOR y:= 1 TO (x DIV 100) DO
	    WriteChar(15C);
	    WriteChar(12C);
	END;
        FOR y:= 1 TO (x MOD 100) DO WriteChar(' '); END;
    END;
END Blank;

PROCEDURE GotoStatusX(x: CARDINAL);
    (* Gets around m2's inability [ie BUG] to write to the status line
    and have the editor behave as well by writing a Kaypro excape sequence
    Notice that the statusline scrolls after every LF, so a WriteLn following
    this routine will note give lasting results. Also, the cursor MUST be
    dragged out of the statusline back to its proper position in the text
    before continuing normal text output *)
BEGIN
    WriteChar(33C);
    WriteChar('Y');
    WriteChar(CHR(24+32));
    WriteChar(CHR(x+32));
END GotoStatusX;

PROCEDURE CursorRecall(Mem: BOOLEAN);
    (* If Mem is TRUE current cursor position is remembered
    If Mem is FALSE  the cursor is returned to previously membered position!*)
VAR X[0F3DCH]: CHAR;
    Y[0F3DDH]: CHAR;
    XO[0F9F6H]: CHAR;
    YO[0F9F7H]: CHAR;

BEGIN
    IF Mem=TRUE THEN
    	XO:=X; 
    	YO:=Y;
    ELSE WriteChar(33C);
    	 WriteChar('Y');
    	 WriteChar(CHR(ORD(Y)+32));
    	 WriteChar(CHR(ORD(X)+32));
    END;
END CursorRecall;


PROCEDURE HitAny;
VAR c: CHAR;
    (*
    Calls a temporary halt in execution with the prompt
    "Press ANY key to continue" on the statusline.
    ^C will abort the program.
    Cursor is returned to screenposition it occupied prior to HitAny
    *)
BEGIN
    CursorRecall(TRUE);
    GotoStatusX(0);
    Blank(79);
    GotoStatusX(0);
    WriteString('Press ANY key to continue ');
    ReadChar(c);
    IF c=CHR(3) THEN HALT; END;
    CursorRecall(FALSE);
END HitAny;


PROCEDURE UserWantsTo(Question: ARRAY OF CHAR): BOOLEAN;
    (*
    Cleverly worded PROCEDURE name forms an English phrase with clear meaning
    if Question is worded to complete the option being queried:
    e.g.
        IF UserWantsTo('Continue') THEN . . . ELSE HALT;
    displays
        Continue? (Y/n)
    on the statusline. N,n,<ESC>= FALSE. ^C aborts. Y,y,<SP>,<CR> = TRUE.
    Nothing else is accepted.
    Cursor is remembered and replaced.
    NB: This function supplies its own questionmark!!
    *)
VAR c: CHAR;
BEGIN
    CursorRecall(TRUE);
    GotoStatusX(0);
    Blank(79);
    GotoStatusX(0);
    WriteString(Question);
    WriteString('?  (Y/n) ');
  LOOP;
    ReadChar(c);
    CursorRecall(FALSE);
    IF c=CHR(3) THEN HALT;
    ELSIF ( (c='N') OR (c='n') OR (c=CHR(27)) ) THEN RETURN FALSE;
    ELSIF ( (c='Y') OR (c='y') OR (c=CHR(13)) OR (c=' ') ) THEN RETURN TRUE;
    END;
  END;
END UserWantsTo;


PROCEDURE Copyright
    (ProgramName,Version,Date: ARRAY OF CHAR; PrivateDomain: BOOLEAN);
VAR x: INTEGER;
    (* Generates an opening screen complete with copyright notice
    and version number. If PrivateDomain is FALSE, program is ceded to
    the Public Domain.
    ProgramName may be upto 80CHARs long and is displayed centered in a
    prominant position. To ensure fit, Date should be 4-10 chars eg '1987'
    *)
BEGIN
    WriteChar(CHR(12)); (*CLEARSCREEN*)

(*DRAW BOX*)
    GotoXY(10,3);
    FOR x:= 1 TO 30 DO WriteChar('*'); WriteChar(' '); END;
    GotoXY(70,3); WriteChar('*');
    FOR x := 4 TO 17 DO
        GotoXY(10,x);WriteChar('*');
        GotoXY(70,x);WriteChar('*');
    END;
    GotoXY(10,18);
    FOR x:= 1 TO 30 DO WriteChar('*'); WriteChar(' '); END;
    GotoXY(70,18); WriteChar('*');
    x:= (80-Length(ProgramName)) DIV 2;
    GotoXY(x,6);
    WriteString(ProgramName);

    x:= ((80-Length(Version)-8) DIV 2);
    GotoXY(x,8);
    WriteString('version ');
    WriteString(Version);

    GotoXY(14,12);
    IF PrivateDomain THEN
        WriteString('(c) ');
        WriteString(Date);
        WriteString(' Copyright J. F. Cuff' );
    ELSE
        WriteString('(pd) ');
        WriteString(Date);
        WriteString(' placed in the Public Domain by J. F. Cuff' );
    END;

    GotoXY(14,14);
    WriteString('dba ZYQOTE Systems');
    GotoXY(14,15);
    WriteString('P. O. Box 1165 - Bonavista - Newfoundland - A0C 1B0');
    GotoStatusX(0);

END Copyright;


PROCEDURE Notice(s: ARRAY OF CHAR);
    (*Blanks the Statusline then writes the message s to the statusline.
    Returns Cursor to precall position on exit.
    *)
BEGIN
    CursorRecall(TRUE);
    GotoStatusX(0);
    Blank(79);    (* to blankout any previous message *)
    GotoStatusX(0);
    WriteString(s);
    CursorRecall(FALSE);
END Notice;

END CUTIL.



                                                 