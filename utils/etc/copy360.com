Ö
_/_/_/_/_/_/    COPY360 v1.0 Disk to Image & Image to Disk     _/_/_/_/_/_/
_/_/_/_/_/             Copyright 2000  by  JAM Soft              _/_/_/_/_/

$
Usage:


    COPY360 <drive:> <pathname>   ---> Creates disk image file from diskette

    COPY360 <pathname> <drive:>   ---> Dumps disk image file onto diskette


    EXAMPLES:

    COPY360 A: GAME.DSK               Dumps A: drive onto GAME.DSK file
    COPY360 G: C:\DISKS\DISK_1.DSK    Dumps G: drive onto DISK_1.DSK in C:\DISKS

    COPY360 DUMP.DAT B:               Writes DUMP.DAT onto floppy B:
    COPY360 F:DEMO.360 H:             Writes DEMO.360 in F: onto floppy H:


$o� x�ڝ	� ��b� :_<_� �~��(	! ""�:`��< D�[[�� �´x2a�	� P*]T]�:_o&	/� �ŷ��I:aGb! � �*]	 "]>oӘ�:aGE� �	� ��G�[[@ �!b� �¦ �[[C�� �´x2a�	� P!  "]�>oӘ:aGHb! � �´�*]T]:_o&	0�� ����*]	 "]�:aGE� �	� ��	��� �  
Error writing disk.
$�	� �  !� ~�(�#�4�>�T] [� �8	��4"[���"[� [� �w#�4�>>2`�~�(�� �#�~�A˯2_�/:_o&  � :w�������������h�:_�A2"	� � V� �Y��y������w ���>$w�	� ��	� �*[͋	� �	� *[͋�	� �Ooops. DOS2 is required!
$Progress: $
Finished.
$Error writing $ not found!
$Drive  : doesn't seem to be a floppy. Continue anyway (y,N)?
$       