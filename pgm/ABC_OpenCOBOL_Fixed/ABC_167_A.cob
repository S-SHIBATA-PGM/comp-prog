000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_167_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 S          PIC X(11).
000007 01 T          PIC X(11).
000008 
000009 PROCEDURE DIVISION.
000010   ACCEPT S.
000011   ACCEPT T.
000012   IF S = T(1 : FUNCTION STORED-CHAR-LENGTH(T) - 1)
000013     DISPLAY "Yes"
000014   ELSE
000015     DISPLAY "No"
000016   END-IF.
000017   STOP RUN.

