000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_007_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC X(11).
000007 
000008 PROCEDURE DIVISION.
000009   ACCEPT A.
000010   IF FUNCTION TRIM(A) = "a" THEN
000011     DISPLAY -1
000012   ELSE
000013     DISPLAY "a"
000014   END-IF.
000015   STOP RUN.

