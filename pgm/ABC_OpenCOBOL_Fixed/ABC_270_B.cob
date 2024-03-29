000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_270_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 X          PIC S9(10).
000007 01 Y          PIC S9(10).
000008 01 Z          PIC S9(10).
000009 01 ans        PIC X(30).
000010 01 ln         PIC X(30).
000011 01 zs         PIC Z(9)9.
000012 
000013 PROCEDURE DIVISION.
000014   ACCEPT ln.
000015   UNSTRING ln DELIMITED SPACE INTO X Y Z.
000016   IF X < ZERO AND Y < ZERO AND X < Y AND Z < Y
000017   DISPLAY -1 STOP RUN.
000018   IF ZERO < X AND ZERO < Y AND Y < X AND Y < Z
000019   DISPLAY -1 STOP RUN.
000020   IF X < ZERO AND Z < ZERO MOVE X TO zs
000021   ELSE IF ZERO < X AND ZERO < Z MOVE X TO zs
000022   ELSE IF X < ZERO AND Y < X MOVE X TO zs
000023   ELSE IF ZERO < X AND X < Y MOVE X TO zs
000024   ELSE IF X < ZERO AND ZERO < Y MOVE X TO zs
000025   ELSE IF ZERO < X AND Y < ZERO MOVE X TO zs
000026   ELSE COMPUTE zs = FUNCTION ABS(Z) + FUNCTION ABS(X - Z).
000027   DISPLAY FUNCTION TRIM(zs).
000028   STOP RUN.

