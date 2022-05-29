000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_229_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC X(19).
000007 01 B          PIC X(19).
000008 01 X11.
000009    03 X1      PIC X(19) VALUE ZERO.
000010    03 X       REDEFINES X1 PIC 9 OCCURS 19.
000011 01 Y11.
000012    03 Y1      PIC X(19) VALUE ZERO.
000013    03 Y       REDEFINES Y1 PIC 9 OCCURS 19.
000014 01 aix        PIC 9(10) VALUE 19 COMP.
000015 01 bix        PIC 9(10) VALUE 19 COMP.
000016 01 flg        PIC 9 VALUE ZERO.
000017 01 i          PIC 9(10) COMP.
000018 01 lena       PIC 9(10).
000019 01 lenb       PIC 9(10).
000020 01 ln         PIC X(50).
000021 
000022 PROCEDURE DIVISION.
000023   ACCEPT ln.
000024   UNSTRING ln DELIMITED SPACE INTO A B.
000025   MOVE FUNCTION STORED-CHAR-LENGTH(A) TO lena.
000026   MOVE FUNCTION STORED-CHAR-LENGTH(B) TO lenb.
000027   PERFORM VARYING i FROM lena BY -1 UNTIL i = ZERO
000028     MOVE A(i:1) TO X1(aix:1)
000029     SUBTRACT 1 FROM aix
000030   END-PERFORM.
000031   PERFORM VARYING i FROM lenb BY -1 UNTIL i = ZERO
000032     MOVE B(i:1) TO Y1(bix:1)
000033     SUBTRACT 1 FROM bix
000034   END-PERFORM.
000035   PERFORM VARYING i FROM 1 BY 1 UNTIL 19 < i
000036     IF 10 <= X(i) + Y(i) MOVE 1 TO flg EXIT PERFORM
000037   END-PERFORM.
000038   IF 1 = flg DISPLAY "Hard" ELSE DISPLAY "Easy".
000039   STOP RUN.

