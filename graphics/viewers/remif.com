�	� o� �ºx�ں�B���a:���Ā����W
:����:��(G�<�v��n�� ����n�(�:������Ď� b� >� A�W()�� � ��>� � ��>� � ���� Vͦ���� _ ��͏�	� �gAborted!
$�	� �g!� ~���,q@ ��� �/���H���h���,>�2��, [� �¯��= O!� >/���~�S(&�s("�D(%�d(!�T($�t( �B(&�b("�C(%�c(!�>�2��>2��#~�02��>2��>�2��!� ~�-�#~�@�#�� [� �>�2��ɯC� ��Fx2���:�G! H� ����¯�����
� [� ���!X @� �¯�:�GE� �¯�� �!X @� ���!�¯��!XA� ���:�� ͏�g!q� @ ����	� �g�	� :���g 	� �g͏T	� �g
Error opening list file!
$                                                                
_/_/_/_/_/_/       ReMIF v1.1  MIF Pictures Viewer       _/_/_/_/_/_/
_/_/_/_/_/              Exclusively for DOS2               _/_/_/_/_/
_/_/_/                Copyright 1999 by JAM Soft               _/_/_/
$
Usage:


    REMIF filename|-@listfile [/S][/D][/Tn][/B][/C]


    Type:   REMIF /H  for more information.

$    'filename' is the name of MIF picture to show. Wilcards are allowed.
    -@listfile can be used instead to make slide shows. Just create a text
    file containing the name of the files to show.

   Options:           /S        Shows pictures with scroll
                      /D        Darks picture until it is loaded
                      /B        Blacks out screen until picture is loaded
                      /C        Shows cyclic slides                      
                      /Tn       Delay betwen pictures (0-9). Default is 3
                                If n=0 then no delay occurs.

   Examples:

               REMIF PICT1.MIF /S /D
               REMIF BIT2*.* /D /B
               REMIF @SLIDE.TXT /S /D


$!�	  ���    3'Q'qsadeUw>��J> ��JP>��J> ��J@>
��J> ��J0>��J> ��J >��J>��J>��J>��J : 	��J>*��J�:	�> (>�����J�> (<���J�_ !�� ��*��  ��   �� /� �� ?��� O �  _ �� o �        3'Q'qsadeUw    3'Q'qsadeUw"�	�"�	"�	�>�2�	>2
! "
! "
�!@��	�C(��	��	�s��r �s{�   ��:
G��	��	�~��w�!@�|� �}�(���t �u���o~�#��ng �}�w��  x� � ��  :�	O:�	��  ���2�	y2�	ɀ *
+"
|��*
)"
"
!
4�  :	�(:T�(:��(>Ú���Ú͏@
	� �g
Error in MIF file!
$>,2�ͦ����!	6 ����0���g(6���0�Ͷ�R��2 	��J:����
:��ľ�:	���
*�"�!��B	��
�F	͝�M	��*�T]"��	 ���ɯ2T!  �!��
!:	��!U6 :�� 6�!  "V!��!U5�:�� 6�:T�2T*V�G �� �"V:T�2T*V�G $"V���!��
���                                                                                                                                    �XC� �¯x2��:�GE� �¯�!0���*@|� +! �">�������! @:�G�H� �����¯|�������+"@*>~#">�    ! �� O!j�_�! � O!l^#V#��ɍ��������KNy��>�����>�����$�$��>��}�|�?�@���>͆8��!	"	  �����!	�~�/w#~��G����w#���!"		  ���!		 6 ���!	���y>��y� ���� �:���&�����*�+�� � :�<2���J*�"�������x���: 	2�:��! (! "�:	�! (! "�͵�>$�y>��y�!���͵�        �>`��J�> ��J�͏2�!�G~�(#�#�	� �g�Invalid drive$�Invalid filename$�Invalid pathname$�Pathname too long$�File not found$�File already in use$�Buffer transfering error$�Reading error$�Error opening file$�Internal error$ Undefined error$
Match not found!
$
Oooops. DOS2 required!
$           