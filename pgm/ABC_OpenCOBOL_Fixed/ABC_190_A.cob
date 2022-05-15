000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_190_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A         PIC 9(10).
000007 01 B         PIC 9(10).
000008 01 C         PIC 9(1).
000009 01 ln        PIC X(30).
000010 
000011 PROCEDURE DIVISION.
000012   ACCEPT ln.
000013   UNSTRING ln DELIMITED SPACE INTO A B C.
000014   IF ZERO = C THEN
000015     IF B < A THEN
000016       DISPLAY "Takahashi"
000017     ELSE
000018       DISPLAY "Aoki"
000019     END-IF
000020   ELSE
000021     IF A < B THEN
000022       DISPLAY "Aoki"
000023     ELSE
000024       DISPLAY "Takahashi"
000025     END-IF
000026   END-IF.
000027   STOP RUN.
