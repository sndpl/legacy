��
 :�� SCR0INST.BAS � :�� M� :�� installatieprogramma voor SCR0DUMP.TSR U�( :�� s�2 :�� MSX Computer Magazine ��< :�� Voor Johan Heling's SCR0DUMP 2.0, door RWL ��F :�� ЀP � "Momentje...": � �: � A�Z ��Z � �H$(X)���(X� ) : � �L$(X)���(X� ): � A$(,),A(,): JA�: NEE�: HOOG�: LAAG�: ESC$���(): LF$���(
): CR$���(): FF$���(): TSR$�"SCR0DUMP": TNAAM$�"JHE Scr0Dump": HR$���(�)���(�): HR$�HR$�HR$ ��d :�� Ophalen printergegevens ************************************************** �n � �: E�: MX� �x  � F� �  .��   � G� �  t��    � ��(A$(F,G))� � � "Definitie";F;",";G;"langer dan 31!": E� ���    � A$(F,G)��"" � MX�F ���   � G ���  � (A(F,)��JA � A(F,)��NEE) � (A(F,)��HOOG � A(F,)��LAAG) � � "Definitie";F;"fout!": E� ��  � F �� � E� � � e�� :�� Zoek positie in file ***************************************************** ��� � TSR$�".TSR" � � AS #: �: � TSR$�".TSR" AS # ���: � #, AS B$: K�: C�: P� ̓�  � F�d � �  ��  � ,F: I$�B$: � I$����(HR$,K,) � K� :� K�K�: � K���(HR$) � P�F: C�C�: K� )��  � F U�� � C�� � � "Installeren onmogelijk!": � ��:�� Afdrukken overzicht ****************************************************** Ʉ�: � "Beschikbare printers:" ۄ � F� � MX�  �" �: � ��(��("A")�F);" ";A$(F,); A�, � F�MX��MX � � �();��(��("B")�F�MX�);" ";A$(F�MX��,); P�6 � F: �: � z�@� TSR$;" is nu geinstalleerd voor: "; ��J� F�P�
 � P�(: � ,F: � B$;: � F: �: �: � �T� "Kies printer, of spatie om te stoppen: ";: I$�$(): � I$ �^� I$��"a" � I$��"z" � I$���(��(I$)� ) A�hI���(I$)���("A"): � I� � I�MX � � � ��r:�� Doe feitelijke installatie *********************************************** ��|� "Installeren..."; ㆆ� B$���(A(I,)): � ,P�: � B$���(A(I,)): � ,P� � � F� �  &�� I$���(��(A$(I,F)))�A$(I,F)��(���(A$(I,F)),) ^�� � G� � : � B$���(I$,G�,): � ,P�F� �G�: � G g�� � F ���� ��();"Nieuwe versie van "; ݇�:�� Inladen (nieuwe) versie m.b.v. MemMan 2.3 ******************************** ���: � TSR$;".TSR laden? ";: I$�$(): � I$: � +��� �("jJyY",I$)� � � � k��� � FT (TNAAM$) � � TK(TNAAM$): � "Oude versie verwijderd!" ����: � TL (TSR$,T) :��480 en 490 werken alleen als MemMan 2.3 geladen is! Ԉ�� "Einde installatie": � '��:�� Printergegevens ********************************************************** K�:�� A$(x,0) naam van de printer ��:�� A$(x,1) printercode voor printen (instellen regelafstand, opvoer) Ӊ:�� A$(x,2) printercode voor regel80 (480 bytes grafisch) �&:�� A$(x,3) printercode voor regel40 (240 bytes grafisch) L�0:�� A$(x,4) printercode na printen   (2 x regelopvoer) ��::�� A(x,0)  blinktabel gebruiken voor inverse ja/nee (meestal JA) �D:�� A(x,1)  meest significante bit hoog of laag (meestal HOOG, bij MSX LAAG) �N:�� �XA$(,)�"Standaard MSX" �bA$(,)�ESC$�"B" 5�lA$(,)�ESC$�"S0480" N�vA$(,)�ESC$�"S0240" c��A$(,)�ESC$�"A" q��A(,)�JA ���A(,)�LAAG ���:�� ���A$(,)�"Standaard Epson" Ë�A$(,)�ESC$�"3"���() ꋼA$(,)�ESC$�"L"��L$(�)��H$(�) ��A$(,)�ESC$�"K"��L$(�)��H$(�) ��A$(,)�"" ,��A(,)�JA <��A(,)�HOOG D��:�� i��A$(,)�"FAX-120 (smalle print)" ��A$(,)�ESC$�"3"���()�ESC$�"P"�"        Screen 0 Dump:"�CR$�LF$�LF$ �A$(,)�"       "�ESC$�"*"���()��L$(�)��H$(�) �A$(,)�"       "�ESC$�"*"���()��L$(�)��H$(�) L� A$(,)�CR$�LF$�ESC$�"2"�CR$�LF$�LF$�LF$ Z�*A(,)�JA j�4A(,)�HOOG r�>:�� ��HA$(,)�"Kyocera Laserprinter (Epson)" ލRA$(,)�"!R!FRPOP1,1;FRPOP3,2;EXIT;"�ESC$�"3"���()�LF$�LF$ �\A$(,)�ESC$�"L"��L$(�)��H$(�) *�fA$(,)�ESC$�"K"��L$(�)��H$(�) W�pA$(,)�FF$�"!R!FRPOP1,6;FRPOP3,1;EXIT;" e�zA(,)�JA u��A(,)�HOOG }��:�� ���A$(,)�"Niet gedefinieerd" ���A$(,)�"" ���A$(,)�"" ʎ�A$(,)�"" َ�A$(,)�"" ��A(,)�JA ���A(,)�HOOG ����    