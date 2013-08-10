PROGRAM PRIMES;{$O-}

CONST w=40;    {(w+1)*500 gives the number up to which primes are found.
                For each increment of w, 32 bytes of storage are needed} 

      max=4;   {maximum number of primes to be displayed on one line}

VAR Sieve:ARRAY [0..w] OF SET OF 0..249;{Sieve in which the primes are contained}

    Count:1..max;     { Number of primes on this line}
    high,low:INTEGER; { The upper and lower parts of the current prime}
    word,bit:INTEGER; { The current position in te sieve}
    j,k:INTEGER;      { The current position that we are deleting from the sieve}
    t,c:INTEGER;      { Temporary storage for initialise and how many elements to skip}
    empty : BOOLEAN;  { Is the Sieve empty flag}

BEGIN

{  Initialise}

FOR t:=0 TO w DO Sieve[t]:=[0..249];
 Sieve[0]:=Sieve[0]-[0];
 word:=0;bit:=1;
 empty:=FALSE;
 Count:=1;
 WRITE(2:8);

REPEAT
   {Find next prime}
  WHILE NOT(bit IN Sieve[word]) DO bit:=SUCC(bit);
  c:=bit+bit+1;

  {Write this prime}
  IF word>50 THEN
   BEGIN
     high:=word DIV 2;
     WRITE(high:5);
     low:=(word MOD 2)*500+c;
     IF low < 100 THEN
        IF low < 10 THEN WRITE('00',low:1)
           ELSE WRITE('0',low:2)
     ELSE WRITE(low:3)
   END
   ELSE WRITE(500*word+c:8);
  Count:=Count+1;
  IF Count=max THEN 
   BEGIN 
    WRITELN;
    Count:=0
   END;


   {Remove multiples of current prime from Sieve}
  j:=bit;k:=word;
  WHILE k<=w DO
   BEGIN
    Sieve[k]:=Sieve[k]-[j];
    k:=k+word*2;j:=j+c;
      WHILE j>249 DO
          BEGIN k:=k+1;j:=j-250 END
      END;
 
 
 {Skip to the word which contains the next prime}
   IF Sieve[word]=[] THEN  BEGIN empty:=TRUE;bit:=0  END;
   WHILE empty AND (word<w) DO
    BEGIN
     word:=word+1;
     empty:= Sieve[word]=[]
     END
 UNTIL empty
 END.


   WHILE empty AND (word<w) DO
    BEGIN
     word:=word+1;
     emp
w
x
y
z
{
|
}
~
[DEL]
















































































































































































�R��))T])���n��f�+|�����}����~͋�n�f��n�f^#V�#��s#r�~	!�"�n�f"> ͋�n�f��n�f^#V�#��s#r����! 9����}
���! �9!��9��[Ԛ!  �u��t�!���n�f����!����l��]	���   �
���! �9!��9��[Ԛ*�!�"���"��
 (Y/N)  ?*�!�"!�
�!  >	O�f�A�s�";;�l���;��3�l��[;��w��~�2�d>N�=�w>Y�=�w:�=��D> !  9���*�!�"�~�͋���"�~��>Y��>(��w3������Ð���! �9!  9��[Ԛê (!�"!��s�~���!�">Y͋��!�">N͋��) !�"!��s���3��������! �9!��9��[Ԛ�n�f~�3�l�͐*�!�"���"�7 ( Y/N/*�!�"!0�! >O�f�A�s�"! ��l��}
�k) ? *�!�"!g�s�";;�l���;��3�l��[;��w��~�2�d>N�=�w>Y�=�w! }�=�w:�=��D> !  9��ʁ�~��! }��(>��*�!�"�~�͋�"�n�f��~��>Y��>(��w*�!�"���"�n�f~�w3��������H�H          .   ���! �9!��9��[Ԛ*�!�"���"! ��l��}
*�!�"Ñ to abort!�	�s���"*�!�"þOmit file type (.!��s���! �s��) assumed!�	�s���"��Enter Filename *�!�"!��s�"���!���!: ���! �u��t��?�n��f�#�u��t� ��R�����!����n��f� ��Z�+|�����}��������! ��n��f�+|�����}����~�w�2! �u��t�;�l���;��w��~�o&  ��       ��R��ÿ ��R�� ��R�N�n��f��! ѷ�R>����K�n��f�+�u��t�*�!�"! }͋> ͋! }͋�"���!����n��f�+|�����}�����> �w�Kÿ�n��f��! ���R>���ʿ;�~��3�l��[;��w����!����n��f�+|�����}������~��w*�!�"�~�͋�"�n��f�#�u��t��~�o& }2�d! }�=�w! }�=�w:�=��D> !  9��ʠ*�!�"���"���!���! +|�����}����~�>:��(>���! �u��t��I�n��f�+�u��t� ��R�����!����n��f�##+|�����}��������!����n��f�+|�����}����~�w�<���!���! +|�����}�����> �w���!���! +|�����}�����> �w�n�f����!�� ����~��! }��>(��w