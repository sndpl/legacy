�!V�*��� �	� !] ~#�?|��� �  ��2\ !e 6M#6A#6K�v�(��Z! �R#"��n!e 6D#6B#6 �v��Z>#2�2�!e 6P#6A#6L�!V�*��� 	� � �  ���!N#F#~#��x� �! �R>�P�!�4� ��!~4~�:860+�!{ͺ��#~#��>,��~#��>,��~#��x=(>,�� #��!yͺ��R¼�"��\ � �	� �\ !  "h � �!V�*��� :��!- � ��  ����f�D �f�W�|��8�7�~#�`?�� �[?�> �� � �!h w#�\ � �>�\ � �>�! "j -"} " ! �\ '� ��~#���� �� �!h w#�\ � ���! "j -"} " ! �"����*�|�� ��&! \ � �����! ��w#"��� �*���R(&\ � �\ � �����\ � ��\ � �=�o& r~#V_	� ��|����
Wild card cannot be used!
$
Invalid drive specification
$
File not found!
$
File cannot OPEN!
$
Not DW file
$
DW to BASIC Palette data converter v1.00
Copyright (C) 1989 T&ESOFT Inc. by N13

Insert MAK-Disk for Now Drive
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
$t 60000 RESTORE 60030:VDP(9)=VDP(9) OR &B00100000
60010 FOR I=0 TO 15:READ G,R,B:COLOR=(I,R,G,B):NEXT
60020 RETURN
60020 DATA                                                                                                                           