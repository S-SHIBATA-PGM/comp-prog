000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_075_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 H          PIC 9(2).
000007 01 MARK1      PIC X(1) VALUE '#'.
000008 01 MARK2      PIC X(1) VALUE SPACE.
000009 01 W          PIC 9(2).
000010 01 cnt        PIC 9(1).
000011 01 dx1.
000012    03 dx11 OCCURS 8.
000013       05 dx   PIC S9(1).
000014 01 dy1.
000015    03 dy11 OCCURS 8.
000016       05 dy   PIC S9(1).
000017 01 field1.
000018    03 field11 OCCURS 50.
000019       05 field PIC X(50).
000020 01 i          PIC 9(18).
000021 01 j          PIC 9(18).
000022 01 k          PIC 9(1).
000023 01 ln         PIC X(5).
000024 01 ln2        PIC X(50).
000025 01 nx         PIC 9(2).
000026 01 ny         PIC 9(2).
000027 01 x          PIC 9(2).
000028 01 y          PIC 9(2).
000029 
000030 PROCEDURE DIVISION.
000031   *> X座標
000032   *> 下、右、上、左、右下、右上、左下、左上
000033   MOVE 0 TO dx(1).
000034   MOVE 1 TO dx(2).
000035   MOVE 0 TO dx(3).
000036   MOVE -1 TO dx(4).
000037   MOVE 1 TO dx(5).
000038   MOVE 1 TO dx(6).
000039   MOVE -1 TO dx(7).
000040   MOVE -1 TO dx(8).
000041   *> Y座標
000042   *> 下、右、上、左、右下、右上、左下、左上
000043   MOVE 1 TO dy(1).
000044   MOVE 0 TO dy(2).
000045   MOVE -1 TO dy(3).
000046   MOVE 0 TO dy(4).
000047   MOVE 1 TO dy(5).
000048   MOVE -1 TO dy(6).
000049   MOVE 1 TO dy(7).
000050   MOVE -1 TO dy(8).
000051   ACCEPT ln.
000052   UNSTRING ln DELIMITED BY SPACE INTO H W.
000053   PERFORM VARYING i FROM 1 BY 1 UNTIL H < i
000054       ACCEPT field(i)
000055   END-PERFORM.
000056   PERFORM VARYING i FROM 1 BY 1 UNTIL H < i
000057     PERFORM VARYING j FROM 1 BY 1 UNTIL W < j
000058       MOVE i TO x
000059       MOVE j TO y
000060       MOVE 0 TO cnt
000061       IF field(x)(y:1) = MARK1 THEN
000062         STRING
000063           ln2(1:FUNCTION STORED-CHAR-LENGTH(ln2))
000064           MARK1 DELIMITED BY SIZE
000065           INTO ln2
000066         END-STRING
000067       ELSE
000068         PERFORM VARYING k FROM 1 BY 1 UNTIL 8 < k
000069           COMPUTE nx = x + dx(k)
000070           COMPUTE ny = y + dy(k)
000071           IF nx < 1 OR H < nx
000072           OR ny < 1 OR W < ny THEN
000073             CONTINUE
000074           ELSE
000075             IF field(nx)(ny:1) = MARK1 THEN
000076               ADD 1 TO cnt
000077             END-IF
000078           END-IF
000079         END-PERFORM
000080         STRING
000081           ln2(1:FUNCTION STORED-CHAR-LENGTH(ln2))
000082           cnt DELIMITED BY SIZE
000083           INTO ln2
000084         END-STRING
000085       END-IF
000086     END-PERFORM
000087     DISPLAY FUNCTION TRIM(ln2)
000088     MOVE SPACE TO ln2
000089   END-PERFORM.
000090   STOP RUN.

