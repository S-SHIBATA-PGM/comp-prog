000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_255_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A1.
000007    03 A       PIC 9(10) OCCURS 1000.
000008 01 K          PIC 9(10).
000009 01 N          PIC 9(10).
000010 01 X1.
000011    03 X       PIC S9(10) OCCURS 1000.
000012 01 Y1.
000013    03 Y       PIC S9(10) OCCURS 1000.
000014 01 cur        FLOAT-LONG.
000015 01 i          PIC 9(10) COMP.
000016 01 j          PIC 9(10) COMP.
000017 01 ln         PIC X(5000).
000018 01 mn         FLOAT-LONG.
000019 01 mx         FLOAT-LONG VALUE ZERO.
000020 01 pt         PIC S9(10) VALUE 1.
000021 01 zs         PIC Z(9)9.9(17).
000022 
000023 PROCEDURE DIVISION.
000024   ACCEPT ln.
000025   UNSTRING ln DELIMITED SPACE INTO N K.
000026   ACCEPT ln.
000027   PERFORM VARYING i FROM 1 BY 1 UNTIL K < i
000028     UNSTRING ln DELIMITED SPACE INTO A(i) POINTER pt
000029   END-PERFORM.
000030   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000031     ACCEPT ln
000032     UNSTRING ln DELIMITED SPACE INTO X(i) Y(i)
000033   END-PERFORM.
000034   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000035     MOVE 1000000007 TO mn
000036     PERFORM VARYING j FROM 1 BY 1 UNTIL K < j
000037       COMPUTE cur = ((x(i) - x(A(j))) ** 2
000038       + (y(i) - y(A(j))) ** 2) ** 0.5
000039       IF cur < mn MOVE cur TO mn
000040     END-PERFORM
000041     IF mx < mn MOVE mn TO mx
000042   END-PERFORM.
000043   MOVE mx TO zs.
000044   DISPLAY FUNCTION TRIM(zs).
000045   STOP RUN.

