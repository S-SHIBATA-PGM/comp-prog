000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_038_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 H1         PIC 9(6).
000007 01 H2         PIC 9(6).
000008 01 W1         PIC 9(6).
000009 01 W2         PIC 9(6).
000010 01 flg        PIC 9(1).
000011 01 ln         PIC X(13).
000012 
000013 PROCEDURE DIVISION.
000014   ACCEPT ln.
000015   UNSTRING ln DELIMITED BY SPACE INTO H1 W1.
000016   ACCEPT ln.
000017   UNSTRING ln DELIMITED BY SPACE INTO H2 W2.
000018   MOVE ZERO TO flg.
000019   EVALUATE H1
000020     WHEN H2
000021       DISPLAY "YES"
000022       MOVE 1 TO flg
000023     WHEN W2
000024       DISPLAY "YES"
000025       MOVE 1 TO flg
000026   END-EVALUATE.
000027   IF ZERO = flg THEN
000028     EVALUATE W1
000029       WHEN H2
000030         DISPLAY "YES"
000031         MOVE 1 TO flg
000032       WHEN W2
000033         DISPLAY "YES"
000034         MOVE 1 TO flg
000035     END-EVALUATE
000036   END-IF.
000037   IF ZERO = flg THEN
000038     DISPLAY "NO"
000039   END-IF.
000040   STOP RUN.

