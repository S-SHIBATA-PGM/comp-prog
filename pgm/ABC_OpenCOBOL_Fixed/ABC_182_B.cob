000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_182_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A1.
000007    03 A       PIC 9(10) OCCURS 100 DEPENDING N.
000008 01 N          PIC 9(10).
000009 01 ans        PIC 9(10) VALUE ZERO.
000010 01 cur        PIC 9(10).
000011 01 d          PIC 9(10).
000012 01 ed         PIC 9(10) VALUE 1000.
000013 01 frq        PIC 9(10) VALUE ZERO.
000014 01 i          PIC 9(10) COMP.
000015 01 j          PIC 9(10) COMP.
000016 01 ln         PIC X(500).
000017 01 mx         PIC 9(10) VALUE ZERO.
000018 01 pt         PIC 9(10) VALUE 1.
000019 01 r          PIC 9(10).
000020 01 st         PIC 9(10) VALUE 2.
000021 01 zs         PIC Z(9)9.
000022 
000023 PROCEDURE DIVISION.
000024   ACCEPT N.
000025   ACCEPT ln.
000026   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000027     UNSTRING ln DELIMITED BY SPACE INTO A(i) WITH POINTER pt
000028     IF mx < A(i) THEN
000029       MOVE A(i) TO mx
000030     END-IF
000031   END-PERFORM.
000032   PERFORM VARYING i FROM st BY 1 UNTIL ed < i
000033     MOVE ZERO TO cur
000034     PERFORM VARYING j FROM 1 BY 1 UNTIL N < j OR mx < j
000035       DIVIDE A(j) BY i GIVING d REMAINDER r
000036       IF ZERO = r THEN
000037         ADD 1 TO cur
000038       END-IF
000039     END-PERFORM
000040     IF frq < cur
000041       MOVE cur TO frq
000042       MOVE i TO ans
000043     END-IF
000044   END-PERFORM.
000045   MOVE ans TO zs.
000046   DISPLAY FUNCTION TRIM(zs).
000047   STOP RUN.

