FM1 =*I,*F1,M1/3,M4,MA,MB,MC,MD,ME,MF,MG,MH,MI,MJ,MK,ML  
FM2 =*I,*F2,M1/3,M4,MA,MB,MC,MD,ME,MF,MG,MH,MI,MJ,MK,ML
FM3 =*I,*F3,M1/3,M4,MA,MB,MC,MD,ME,MF,MG,MH,MI,MJ,MK,ML
FM4 =*I,*F4,R /2,S3/2,SA,SB,SC,SD,SE,SF,SG,SH,SI,SJ,SK,SL
FM5 =*I,*F5,R /2,S3/2,SA,SB,SC,SD,SE,SF,SG,SH,SI,SJ,SK,SL
FM6 =*I,*F6,R /2,S3/2,SA,SB,SC,SD,SE,SF,SG,SH,SI,SJ,SK,SL
FMR =
FM7 =*I,*F7,B1,B2,B3,B4,BA,BB,BA,BD,BE,BF,BE,BH,BI,BJ,BI,BL
FM8 =*I,*F8,B1,B2,B3,B4,BA,BB,BA,BD,BE,BF,BE,BH,BI,BJ,BI,BL
FM9 =*I,*F9,B1,B2,B3,B4,BA,BB,BA,BD,BE,BF,BE,BH,BI,BJ,BI,BL
PSG1=*I,*P1,BD1,BD2,BD3,BD4,BDA,BDB,BDA,BDB,BDE,BDF,BDE,BDH,BDI/3
PSG2=*I,*P2,SD1,SD2,SD3,SD4,SDA,SDB,SDA,SDB,SDE/3,SDH,SDI/3
PSG3=*I,*P3,SY1,SY2,SY3,SY4,SYA,SYB,SYA,SYB,SYE/3,SYH,SYI/3
SCC1=
SCC2=
SCC3=
SCC4=
SCC5=
*I=T120l16
*F1=@65V13Q6O3
*F2=@33V12Q6O4
*F3=@65V11Q6O3Z32R8
*F4=@65V13Q6O3
*F5=@33V12Q6O4
*F6=@65V11Q6O3 Z32 R8
*F7=@33V13Q6O2
*F8=@65V12Q6O1
*F9=@23V12Q6O3
*P1=@11V15O2 L16
*P2=@14V11O3 L16
*P3=@15V13O3 L64
R=R1R1
M1=(P0D32P32M1)D32DDDDDE(F)FFFFFGAFEEEE<B>CE(D#)D#D#D#D#<AB>C<A>
S3=(P0F32P32M1)F32FFFFFG(A)AAAAAB>C<AG#G#G#G#DEG#(G)GGGGCDEC
M4=>DDDDDDE(F)FFFFFGAFEEEE<B>CE(D#)D#D#D#D#<AB>C<A
MA=>(EI64M4)E8.P32M1G#A8(B)B8B8>C8<B8>(DI64M4)D8.P32M1DC8<(B)B8B8>C8D8<<
SA=(EI64M4)E8.P32M1FE8(G#)G#8G#8F8E8(G#I64M4)G#8.P32M1G#A8(B)B8B8>C8D8<
MB=>>(CI64M4)C8.P32M1<FAB>(C)C8C8<B8A8>FI64M4)F8.P32M1FED(C)C8<A8B8>C8<<
SB=>(FI64M4)F8.P32M1FED<(A)A8A8B8>C8(CI64M4)C8.P32M1<A>CF(A)A8A8G#8F8<
MC=>B8.A8.F8E8.G#8.B8>(DI64M4)D8.P32M1<G#B>D(FI64M4)F4P32M1<B>DF(G#I64M4)<<
SC=>E8.F8.E8G#8.F8.E8(G#I64M4)G#8.P32M1FG#B>(DI64M4)D4P32M1<G#B>D(FI64M4)<<
MD=>>G#4P32M1DFG#(BI64M4)B4P32M1FG#B>(DI64M4D2..)P32M1<DR<<
SD=>>F4P32M1<B>DF(G#I64M4)G#4P32M1DFG#(BI64M4B2..)P32M1<BR<
ME=>>>C8.<B8.(AI32M6A)A2P32M1B8.A8.(GI32M6G)G2P32M1<<
SE=>>R2>D8.C8.<(BI32M6B)B2P32M1>C8.<B8.A8<<
MF=>>(AI32M6A8.)A4P32M1DEFD8.A8(BI32M6)B8.P32M1BA8(G#)G#8G#8A8B8<<
SF=>>>(CI32M6C8.)C4P32M1<FGAF8.>C8(DI32M6)D8.P32M1DC8<(B)B8B8>C8(D.)<D32<<
MG=>>>E8.D8.(CI32M6C)C2P32M1D8.C8.<(BI32M6B)B2P32M1<<
SG=>>R2A8.B8.>(CI32M6C)C2P32M1<G8.F8.E8<<
MH=>>(AI32M6)A4..P32M1AB>CD8EG#E(BI32M6)B8.P32M1BG#8(E)E8D8C8<B8<<
SH=>>(FI32M6)F4..P32M1FG#AB8>CEC(G#I32M6)G#8.P32M1G#E8(C)C8<B8A8G#8<<
MI=>>(AI48M8)A4..P32M1>C8.(EI48M4)E4P32M1(DI48M4)D4..P32M1G8.(BI48M4)B4P32M1<<<
SI=>>(FI48M4)F4..P32M1A8.>(CI48M4)C4P32M1<(BI48M4)B4..P32M1>E8.(GI48M4)G4P32M1<<<
MJ=>>>>C<B(AI48M4AA2.A2..)A8P32M1<<<
SJ=>>>AB>(CI48M4CC2.C2)C8F8E8D8P32M1<<<<
MK=>>>(AI48M4)A2...P32M1(GI48M4G4..G)G4..P32M1<<<
SK=>>>>(CI48M4)C2...P32M1(DI48M4)D4..P32M1<(BI48M4)B4..P32M1<<<
ML=>>>(AI48M4A2...A1A1)A4R4R2P32M1<<
SL=>>>>(CI48M4C2...C1C1)C4R4R2P32M1<<<<
B1=>D4.D(C)C2<A#4.A#(A)A2
B2=>D4.D(C)C2<A#4.A#(A)A4>C#4<
B3=>D8D8D8D(C)C8C8C8C8<A#8A#8A#8A#(A)A8A8A8A8
B4=>DDDDDDD(C)CCCCCCCC<A#A#A#A#A#A#A#(A)AAAAAB>CD<
BA=>E>E<BE>E<EB>E8<E>E<EBEB>E<E>E<BE>E<EB>E8<E>E<EBEB>E<<
BB=>F>FC<F>F<F>CF8<F>F<F>C<F>CF<F>FC<F>F<F>CF8<A>FEDC<BA<
BD=>F>FC<F>F<F>CF8<F>F<F>C<F>CF<A>FEDC<BAG#FEDC<BAG#F
BE=AAAAAAAAAAAAAAAAGGGGGGGGGGGGGGGG
BF=FFFFFFFFFFFFFFFFEEEEEEEEEEEEEG#8.
BH=FFFFFFFFFFFFFFFFEEEEEEEEEEEEEGFE
BI=FFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGG
BJ=AAAAAAAAAAAAAAAAAAAAAAAAAAAAA>AE<A
BL=AAAAAAAAAAAAAAAAAAAAEFGG#(A2)(A1)A2R2
BD1=GGGGGGGGRGGGGGGGGGGGGGGGRGGGGGGG
SD1=@12GRRRRRGGRRRRRRGRGRRRRRGGRRGRGRGR
SY1=(DC<BAGFE)D>R4(DC<B)A>(DC<BAGFE)D>R16R4(DC<BAGFE)D>(DC<BAGFE)D>R4(DC<B)A>(DC<BAGFE)D>R16<(GFEDC<BA)G>>(GFEDDC<BA)G(GFEDC<BA)G>>
BD2=GRGRGGGGRGGGGGGGGRGGRGGGRGGRGGRG
SD2=GRGRRRGGRRGRRRGRG32G32GGG32G32GGGGRRGRGGRR
SY2=<(GFEDC<BA)G>>(DC<BAGFE)D>R8(DC<B)A(GFEDC<BA)G>>R16(DC<BAGFE)D>R8(DC<BAGFE)D>(G)F(G)F(DC<B)A(GFE)D>(G)F(G)F(DC<B)A(GFE)D>(GFE)D<(GFEDC<BA)G>>R16(DC<BAGFE)D>(GFE)D<(GFEDC<BA)G>>R16
BD3=GRGGRGGRGGRGGRGGGRGGGGGGRGGGGGRG
SD3=GRGGRRGRGGRRGRGGG32G32GGGGGGGRRGRGGRR
SY3=<(GFEDC<BA)G>>(GFE)D<(GFEDC<BA)G>>R16<(GFEDC<BA)G>>(GFE)D<(GFEDC<BA)G>>R16<(GFEDC<BA)G>>(GFE)D<(GFE)D>(G)F(G)F(GFE)D(GFE)D(GFE)D(DC<B)A>(DC<B)A>(DC<B)A>(DC<BAGFE)D>R16<(GFEDC<BA)G>>(GFE)D<(GFEDC<BA)G>>R16
BD4=GRGGRGGRGGRGGRGGGRGGGGGGGGGGRGGG 
SD4=G32G32GGG32G32GGG32G32GGG32G32GGG32G32GGGG32G32GGGGGGGGGGGRGGG
SY4=(G)F(G)F(DC<B)A(GFE)D>(G)F(G)F(DC<B)A(GFE)D>(G)F(G)F(DC<B)>A<(GFE)D>(G)F(G)F(DC<B)A(GFE)D>(G)F(G)F(DC<B)A(GFE)D>(GFE)D(G)F(G)F(GFE)D(GFE)D(GFE)D(DC<B)A>(DC<B)A>(DC<B)A>(DC<B)A(GFE)D(GFE)D(GFE)D(GFEDC<BA)G>>(GFE)D<(GFE)D>(GFE)D
BDA=RRGGRGGRRRGGRGGGRRGGRGGRRRGGRGGG
SDA=GRGGRRGRGRGGRGGGGRGGRRGRGRGGRGGG
SYA=(DC<BAGFE)D>(GFE)D(DC<BAGFE)D>R16(GFEDC<BA)G>(DC<BAGFE)D>(GFE)D(DC<BAGFE)D>(DC<B)A>(GFE)D(DC<B)A>(DC<BAGFE)D>(GFE)D(DC<BAGFE)D>R16(GFEDC<BA)G>(DC<BAGFE)D>(GFE)D(DC<BAGFE)D>(DC<B)A>(GFE)D(DC<B)A>
BDB=RRGGRGGRRRGGRGGGGRGGGGGGGGGGGGGG
SDB=GRGGRRGRGRGGRGGGG32G32GGGGGGGGGGGRGGG
SYB=(DC<BAGFE)D>(GFE)D(DC<BAGFE)D>R16(GFEDC<BA)G>(DC<BAGFE)D>(GFE)D(DC<BAGFE)D>(DC<B)A>(GFE)D(DC<B)A>(G)F(G)F(GFE)D(GFE)D(GFE)D(DC<B)A>(DC<B)A>(DC<B)A>(DC<B)A><(GFE)D(GFE)D(GFE)D(GFEDC<BA)G>>(GFE)D(DC<B)A(GFE)D>
BDE=GRRRRRGRGRRRRRRRGGRRRRGRGRRRRRRR
SDE=@14RRRRRRRRGRRRRRRRRRRRRRRRRRRRRRRR
SYE=R2(DC<BAGFE)D>R4.R2(DC<BAGFE)D>R4.
BDF=GRRRRRGRGRRRRRRRGGRRRRGRGRRRRRGR
BDH=GRRRRRGRGRRRRRGRGRGRGRGRGRGGGGGG
SDH=RRRRRRRRGRRRRRRRGRGRGRGRG32G32GGGGGGG
SYH=R2(DC<BAGFE)D>R4.(DC<BAGFE)D>(DC<BAGFE)D>(DC<BAGFE)D>(DC<BAGFE)D>(G)F(G)F(GFE)D(DC<B)A>(DC<B)A(GFE)D(GFE)D(DC<B)A>(DC<B)A>>
BDI=GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG
SDI=RRGRRRGRRRGRRRGRRRGRRRGRRRGRRRGR
SYI=R8(DC<BAGFE)D>R8(DC<BAGFE)D>R8(DC<BAGFE)D>R8(DC<BAGFE)D>R8(DC<BAGFE)D>R8(DC<BAGFE)D>R8(DC<BAGFE)D>R8(DC<BAGFE)D>
BDL=GGGGGGGGGGGGGGGGGGGGGRGGGRRRRRRRR1R1
SDL=RRGRRRGRRRGRRRGRGGGRG32G32GGGGRRRRRRRR1R1
SYL=R8(DC<BAGFE)D>R8(DC<BAGFE)D>R8(DC<BAGFE)D>R8(DC<BAGFE)D(GFE)D>(GFE)D<(GFEDC<BA)G>>(G)F(G)F(GFE)D(DC<B)A(GFE)D>(GFEDC<BA)G>R4.R1R1
