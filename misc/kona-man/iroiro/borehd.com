o� �x�07	�� �	� *** BORE-HD runs only under DOS 2.
$�2(2*:� �(j�!�  �~ �(_]� �s �#�!� :� OG>?͡x�¼A��͡x���!� A��͡x��-!� A�
͡x���v�!� A�͡x��?*� �!��{,� o	͸� 	�� ��� :*�	�(�	�(
�	�(�		� :*�ʍ���(*�		�� ����(
��@(�	� 
	� QKd� ͜!+@k� �C� ů  !�J� ���!�I� �E� ��;	�� ���	   d� b � ���	�� ��� �Updating register ...                                  
$                                                                                $Register updated OK.                                   

$Error:                                                                    Retry or Cancel (R/C)? $ REF is invalid$ NUM is invalid$s REF and NUM are invalid$
$Register update cancelled.                        
$����	� ���G~f� !}#~� ��! ��w	�� ��� � �r(�R(
�C(�c(�͜>���	�� ���  b� � 	�� �l
� b � >2i
�2j
�!�> �w �w�w�w>1�w*� �!��{�!	�{�!N	�{,� 	͸Z	͸>2*ù�[i
�Si
!� >�,!N		 ��!Z		 ��*� �!N	�{,� Z	͸>2*ù#��7������A͡x� *� �!��{>2*�>2*�z��.�0}y2;{�- tJ 	#�z�(h�0dy2<{�- [J 	#�z�(O�0Ky2=*� ��:<W:;_l:=o& �Q0�	+� ���+� � :<W:;_:=o& �!��{�:*��2*�NOW     :*�2*#�~�+(�-($�8<� 9z�(5�Ci
��#�8'� $*i
	�#�8� *i
�B�!� >�,ù:*�@2*ù�2��y�����(��x� 
��~#� ���+ #�(����$������>� �+�� ��B���RE�����O���� ������!C�� ��� �    ~_�08'�:0#z�(�]���  {�0O	�>���#��� �� {�0�X�:�X�~ ����?��� ���������%���>�>�>��������������####>�,>-#w��Z ++0>�,+>-w� ++0>�,�����������Z  >��,##>:w#�� 0�,����������	� �����Y) $  /RESET /BOOT /NUM: /REF: PROGRAM    BORE-HD v1.01: BOot REgister for MSX with Hard Disk - (j) Konami Man '95
   ------------------------------------------------------------------------

$Number of boots from  12-02-99 :        1   |   Date:  12-02-99
Last boot was done in 12-02-99 at 13:19 h   |  -----------------
Current boot done in  12-02-99 at 13:19 h   |   Time:  13:19 h

Run mode: $Booting system.

$Initializing register.

$Consulting register. BOREHD /? shows options.

$Updating register.

$Error: parameter$. Register not updated.
$                                                                   A  This program stores a register of how many times computer was booted from a   reference date, and also time and date of last boot and current boot. Data are  stored in the own program file, which can be freely renamed.

  When executed without parameters, BOREHD just shows register data without any update. Available parameters are:

/RESET => Initializes register: sets current date as reference date and sets    number of boots to one.

/BOOT  => Boot mode: increases boots number, copies date and time of Current Boot field into Last Boot field, and current date and time into Current Boot field.You must put BOREHD /BOOT command into AUTOEXEC.BAT of your HD for actually makea count of boots.

/REF:{NOW|<dd-mm-yy>} => Sets given dateas reference date. With NOW sets currentdate as reference date.

/NUM:[+|-]<nnnnn> => Sets boots number to <nnnnn>. With + or - adds or subtracts<nnnnn> to boots number. Maximum boots number is 65535.
$    ������!����w ���w����w�p�q��w�w>
�w�u�t!�u
�t�~ �(��~>> ����w�~ �ʙ� >H>Bw#�4�4z�(!��F(�z(�!  ��R��>��N(>��w�ݾ ��>ݾ �� ���zK �^!  ��j�R0?��WY}���
��0�
�Aw#�4�4����V +�F~�0 	+�5�5�#�~ �(�(� $>B>#w#�4�4>Hw#>&w#�4�4�4�4�~�(� >+
>-w#�4�4�~ݾڠ(ݖG�~w#�4��n
�f�~� �����w�~=_ ���~�?G�F�p�#���n
�f�^�V�N ����~��(� �>$w�F�N������                          