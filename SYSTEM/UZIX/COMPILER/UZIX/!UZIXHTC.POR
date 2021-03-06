Compilador Hitech-C direcionado para o UZIX
===========================================
Documento escrito por Adriano C. R. da Cunha
�ltima atualiza��o: 23/08/2001

	Este pacote cont�m todos os arquivos de cabe�alho, bibliotecas e
arquivos execut�veis do compilador necess�rios para compilar uma aplica��o
em C para o sistema operacional UZIX. Al�m disso, o manual do Hitech-C
est� inclu�do.
	Verifique o site do UZIX para informa��es sobre compila��o
de aplica��es do UZIX em MSXDOS, MSDOS, Linux ou outro sistema
operacional.
	Os arquivos execut�veis neste pacote s�o a vers�o CP/M do
compilador Hitech-C, vr. 3.09, que � liberada gratuitamente (e tamb�m seu
manual) pela empresa que o produziu, Hitech, em seu site
(www.hitech.com.au).

Mapa da me�ria do UZIX 1.0
--------------------------
                
        0000h   +----------------------------------+
                |  vetores de chamadas de sistema  |
                |  dados do processo para o kernel |
        0100h   +----------------------------------+
                |        c�digo da aplica��o       |
                \                                  \
                |   dados est�ticos da aplica��o   |
                \                                  \
                |     |         heap          |    |
                |     v                       v    |
                \                                  \
                |     ^   pilha da aplica��o  ^    |
                |     |argumentos da aplica��o|    |
                |       vari�veis de ambiente      |
        8000h   +----------------------------------+
                |          kernel do UZIX          |
        F100h   +----------------------------------+
                |    vari�veis de sistema do MSX   |
        FFFFh   +----------------------------------+
                
Mapa da me�ria do UZIX 2.0
--------------------------

        0000h   +----------------------------------+
                |  vetores de chamadas de sistema  |
                |  dados do processo para o kernel |
        0100h   +----------------------------------+
                |        c�digo da aplica��o       |
                \                                  \
                |   dados est�ticos da aplica��o   |
                \                                  \
                |     |         heap          |    |
                |     v                       v    |
                \                                  \
                |     ^   pilha da aplica��o  ^    |
                |     |argumentos da aplica��o|    |
                |       vari�veis de ambiente      |
        C000h   +----------------------------------+
                | parte residente do kernel do UZIX|
        F100h   +----------------------------------+
                |    vari�veis de sistema do MSX   |
        FFFFh   +----------------------------------+

Procedimentos gerais para escrever aplica��es para o UZIX
---------------------------------------------------------

	Sem muitos conselhos aqui. Em geral, observe o seguinte:

	- escreva sua aplica��o em ANSI C;
	- se seu alvo � o UZIX 1.0, sua aplica��o n�o pode ter mais que
32kb, nicluindo c�digo, dados e pilha. Para o UZIX 2.0 sua aplica��o n�o
pode ter mais que 48kb (tamb�m incluindo c�digo, dados e pilha). Ap�s
compilar com sucesso sua aplica��o, olhe o arquivo de mapa e verifique o
endere�o do __Hbss. Se ele estiver muito pr�ximo do final do espa�o da
aplica��o (7FFFh para o UZIX 1.0 e BFFFh para o UZIX 2.0), tente reduzir o
tamanho do c�digo. Outra informa��o importante: a pilha, as vari�veis de
ambiente e os argumentos da aplica��o s�o colocados no topo do espa�o da
aplica��o. Se o __Hbss estiver muito pr�ximo deles sua pilha e dados podem
ser misturados. O resultado � um crash do sistema (ou, no melhor caso,
apenas da aplica��o). Como regra geral n�o deixe que o __Hbss seja maior
que 7A00h (para o UZIX 1.0) ou BA00h (para o UZIX 2.0). Fazendo isso voc�
evitar� muitos problemas de pilha;
	- evite criar vari�veis locais muit grandes (como 'char
buffer[512]'), pois isso faz com que a pilha abaixe muito. Declare-as como
est�ticas. Voc� ir� gastar mem�ria no espa�o da aplica��o, mas evitar� que
a pilha abaixe muito e (talvez) corrompa dados din�micos (especialmente no
caso de um programa grande);
	- NUNCA use as instru��es DI e EI do Z80;
	- NUNCA use acesso direto ao hardware do MSX;
	- NUNCA acesse dados abaixo de 100h ou acima do espa�o da
aplica��o ou voc� provavelmente corromper� o sistema;

Dicas sobre o uso do compilador Hitech-C
----------------------------------------

	O compilador Hitech-C n�o � perfeito e possui algumas intrigantes
caracter�sticas. Aqui est�o algumas dicas sobre o seu uso para compilar
aplica��es para o UZIX (e tamb�m aplica��es para outros sistemas
operacionais). Outras dicas (e solu��es de erros) s�o explicadas no manual
do Hitech-C (em ingl�s).

* Erro 'out of memory' durante o passo 1

	Se voc� obteve esse erro em uma chamada de fun��o ou procedimento,
provavelmente ela usa muitos par�metros (5, 6 ou mesmo mais). Tente
reduzir o n�mero de par�metros passados: use uma estrutura ou mesmo
coloque alguns par�metros em vari�veis globais.

	Se voc� recebeu o erro 'Out of memory' em um comando 'if',
provavelmente voc� tem muitas condi��es de teste. Tente dividir o 'if' em
dois ou mais 'if' encadeados. Por exemplo, mude

        if (foo == 1 && bar == NULL && foobar != 0 && foofoo == 's' )
        
        para

        if (foo == 1 && bar == NULL) if (foobar != 0 && foofoo == 's')

	Se voc� obteve o erro 'Out of memory' em outro lugar do seu
c�digo, talvez ele seja muito grande para o Hitech-C. Tente divid�-lo em
duas partes. Compile cada parte e, durante o link, junte-as.

* Erro 'Out of memory' durante otimiza��o

	N�o h� muito o que fazer aqui. Se seu c�digo tem uma fun��o muit
grande, tente divid�-la em fun��es menores. Se voc� realmente n�o pode
contornar o problema, esque�a a otimiza��o.

* Otimizador trava

	Se voc� est� usando c�digo assembly direto no seu programa,
provavelmente o otimizador do Hitech-C n�o gostar� e ir� travar. Tente
reescrever seu c�digo (evite o uso dos c�digos JR e RET).
	Se voc� n�o sabe qual(is) instru��o(oes) est�(�o) travando o
otimizador, tente isolar o problema usando constru��es '#if 0' em seu
fonte. Uma vez que voc� descobrir qual � o problema, tente reescrever seu
c�digo.
	Se voc� realmente n�o pode contornar o problema, esque�a a
otimiza��o.

* 'undefined symbols' durante a etapa de link

	Se voc� obteve esse erro para s�mbolos que voc� tem certeza que
existem na biblioteca, duas coisas podem ter acontecido:

	- voc� esqueceu de especificar a bilbioteca durante o link

	- a bilbioteca precisa ser religada;

	O primeiro casa � simples, e n�o merece coment�rios.
	O segundo caso � mais complicado. O Hitech-C para CP/M tem um
requisito severo para bibliotecas: todos os m�dulos que as comp�em devem
estar ordenados. Todas as refer�ncias a um s�mbolo devem vir ANTES da
defini��o deste s�mbolo. Por exemplo, na biblioteca padr�o, o fopen.obj
deve vir antes do open.obj, por que fopen.obj chama open.obj. Se a
biblioteca foi ligada na ordem inversa, ao fazer o link da sua aplica��o
que usa fopen() voc� ir� receber a mensagem de erro 'undefined
symbol: _open'. O que fazer ent�o? Pegue os fontes da biblioteca e
religue-os na ordem correta (mas, primeiro, descubra o problema!). Se o
problema for nas bibliotecas padr�o do UZIX, envie o fonte da sua
aplica��o para adrcunha@yahoo.com.br. Eu a irei compilar, encontrar o
problema e corrigir a ordem da biblioteca.

Cr�ticas, adi��es, erros, d�vidas, coment�rios, corre��es, quest�es
-------------------------------------------------------------------

        Qualquer coment�rio, adi��o ou relat�rio de erros s�o bem-vindos.
Al�m disso, se eu escrevi algo errado, corre��es s�o tamb�m bem-vindas.
Por favor, escreva para adrcunha@yahoo.com.br.

        P�gina Oficial do UZIX:
        http://uzix.msx.org

