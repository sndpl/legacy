�!V�*��� �	� !] ~#�?ʮ�� �  ��2\ !e 6D#6B#6 ����!e 6S#6P#6R�!V�*��� 	� � �  ��^!�N#F#~#͓x� �! �2t� >���!t4���!U4~�:860+�!R�V��##>&͓>h͓~#͓~#͓>,͓#�##>&͓>h͓~#͓~͓�!�V! ��ҍ�!]R ��!F#�V�:tG�� >����!U4~�:860+�!R�V��##>&͓>h͓~#͓~#͓>,͓#�##>&͓>h͓~#͓~͓�!�V! ���!3F#�V:tG!o4~�:860+��!b�V;L�\ � �	� �\ !  "h � �!V�*��� :��!- � ��  ���~#�d ~#�b�7�- �~#�7�~#�d ~#�b�|��8�7� � �!h w#�\ � �>�\ � �>�! "j -"} " ! �\ '� ��~#͓�� �� �!h w#�\ � p�®! "j -"} " ! �"u���*u|�� ��&! \ � ��®��! ��w#"u�� �*u��R(&\ � �\ � ���®�\ � ��\ � �=�o& ~#V_	� �î7Xm�
Wild card cannot be used!
$
Invalid drive specification
$
File not found!
$
File cannot OPEN!
$
Not DB file
$
DB to BASIC sprite data converter v1.00
Copyright (C) 1989 T&ESOFT Inc. by N13

Insert DB-Disk for Now Drive
Hit SPACE key.
$
Insert SAVE-Disk for Now Drive
Hit SPACE key.
$
END of job
$
file not found!
$
File creation error
$
Data write error
$w10000 RESTORE 50000:READ N
10010 RESTORE 20000:SP=0:FOR I=1 TO N
10020 A$="":FOR J=0 TO 31
10030 READ A:A$=A$+CHR$(A)
10040 NEXT J:SPRITE$(SP)=A$
10050 SP=SP+1:IF SP>31 THEN 10070
10060 NEXT I
10070 RESTORE 40000:FOR I=1 TO SP
10080 A$="":FOR J=0 TO 15
10090 READ A:A$=A$+CHR$(A)
10100 NEXT J:COLOR SPRITE$(I-1)=A$
10110 NEXT I:RETURN
20000 'Sprite pattern data
40000 'Sprite color data
50000 'Number of Sprite data
20000 DATA 4000050010 DATA 000
&h            