�J
CMPDSK - Compare Disks
Version 1.1
Copyright (c) 1992 by C.P.U.

V	� �!�!� ~� �	�  � �}͔ͽ���8��:\ 2�:l 2�!� ND#�>/����~� �a �� ��s �� ��b �� ��p �� ���� � :�� :��! 
 �  ! ��(
��� ��� �p# �#x� ��!���� �/=o�[�&� �!���� v��� V�'�� N��	� *��G�	� �!����������_���{�
?0_���{�0�!�� ��2��|� ��	� �����!���� �   :�=o&/� *"�  :�=o&/� *�[���0"����*��[�#"���(7�� v��� V �� N �� F7�?��~ �7?� ��~ �(	� 7?�	� 7?�*��GN	� :���2 ! 
~#�� � ��0?(="�~#�  �+"��*�͡�[���(Q	� *�͡S	� �# ��8��	� �!�Ͳ�!������
�R�G������� ^�:����5	� � � �|��}��            0000$
$Unmatching sector: $Disks don't match

$Disks are exactly the same

$Press key to continue...$: $-$, $
CMPDSK Version 1.1
Copyright (c) 1992 by C.P.U.

CMPDSK is Public Domain!

$Usage:
  CMPDSK [d1:[d2:[/A/B/P/S]]]

Purpose:
  Compares two disks and displays unmatching sectors/bytes

Options:       
  /A compares all sectors          /P pauzes at end of screen
  /B displays unmatching bytes     /S displays unmatching sectors

Examples:      

A:\>CMPDSK                ; shows this help screen
A:\>CMPDSK A:             ; compares disk A: with default disk
A:\>CMPDSK A: B:          ; compares disk A: with disk B:
A:\>CMPDSK A: B: /S/A     ; shows all unmatching sectors
A:\>CMPDSK A: B: /B/A/P   ; shows all unmatching sectors and bytes, with pauze
$          