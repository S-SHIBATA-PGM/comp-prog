000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_150_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 K              PIC 9(10).
000007 01 X              PIC 9(10).
000008 01 ln             PIC X(10).
000009 
000010 PROCEDURE DIVISION.
000011   ACCEPT ln.
000012   UNSTRING ln DELIMITED BY SPACE INTO K X.
000013   IF X <= 500 * K
000014       DISPLAY "Yes"
000015   ELSE
000016       DISPLAY "No"
000017   END-IF.
000018   STOP RUN.

