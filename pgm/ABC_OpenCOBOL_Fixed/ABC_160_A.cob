000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_160_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 S          PIC X(30).
000007 
000008 PROCEDURE DIVISION.
000009   ACCEPT S.
000010   IF S(3:1) = S(4:1) AND S(5:1) = S(6:1)
000011     DISPLAY "Yes"
000012   ELSE
000013     DISPLAY "No"
000014   END-IF.
000015   STOP RUN.

