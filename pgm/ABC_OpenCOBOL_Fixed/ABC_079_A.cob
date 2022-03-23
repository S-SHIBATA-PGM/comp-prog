000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_079_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 D          PIC 9(4).
000007 01 N          PIC 9(4).
000008 01 R          PIC 9(1).
000009 01 bk         PIC 9(1).
000010 01 cnt        PIC 9(1).
000011 01 mx         PIC 9(1).
000012 
000013 PROCEDURE DIVISION.
000014   ACCEPT N.
000015   MOVE N TO D.
000016   DIVIDE 10 INTO D GIVING D REMAINDER bk.
000017   MOVE 0 TO mx.
000018   MOVE 1 TO cnt.
000019   PERFORM UNTIL D = 0
000020     DIVIDE 10 INTO D GIVING D REMAINDER R
000021     IF bk = R THEN
000022       ADD 1 TO cnt
000023     ELSE
000024       MOVE 1 TO cnt
000025     END-IF
000026     MOVE R TO bk
000027     COMPUTE mx = FUNCTION MAX(mx, cnt)
000028   END-PERFORM.
000029   IF 3 <= mx THEN
000030     DISPLAY "Yes"
000031   ELSE
000032     DISPLAY "No"
000033   END-IF.
000034   STOP RUN.

