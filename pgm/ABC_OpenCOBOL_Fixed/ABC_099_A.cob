000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_099_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 N          PIC 9(4).
000007 
000008 PROCEDURE DIVISION.
000009   ACCEPT N.
000010   IF 999 < N THEN
000011     DISPLAY "ABD"
000012   ELSE
000013     DISPLAY "ABC"
000014   END-IF.
000015   STOP RUN.

