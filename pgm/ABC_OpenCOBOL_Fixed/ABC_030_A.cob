000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_030_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC 9(10).
000007 01 B          PIC 9(10).
000008 01 C          PIC 9(10).
000009 01 D          PIC 9(10).
000010 01 bd         PIC 9(10)V9(10).
000011 01 dd         PIC 9(10)V9(10).
000012 01 ln         PIC X(30).
000013 
000014 PROCEDURE DIVISION.
000015   ACCEPT ln.
000016   UNSTRING ln DELIMITED BY SPACE INTO A B C D.
000017   COMPUTE bd = B / A.
000018   COMPUTE dd = D / C.
000019   IF bd = dd THEN
000020     DISPLAY "DRAW"
000021   ELSE
000022     IF bd < dd THEN
000023       DISPLAY "AOKI"
000024     ELSE
000025       DISPLAY "TAKAHASHI"
000026     END-IF
000027   END-IF.
000028   STOP RUN.

