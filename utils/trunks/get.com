�GET 1.0  by trunks 1996
$ Gets n bytes from a file, starting from position m
 and writes it on another file

Parameters:
  GET <source file> <destination file> /S<first pos> /B<bytes to get>
   <fist position> & <bytes to get> must be in 16bit HEX format (0..FFFF)
$�!l � ��:] � �:�� �!� F>/#�(�$#~���S(�B(�&*�����{z��������! "j "�l"�"�*&"} *(" ��!**|�(4 ���B0	DM!  "*`i"�'�!  &� 
s.Ns����  #~�0��
8	�����?��#��#��#��#��_�	�\ � ��    ����
ERROR handling source file!
$
ERROR handling destination file!
$
Ok!
$
End of source file.
$                                                                                                             