000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_141_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 S         PIC X(30).
000007 
000008 PROCEDURE DIVISION.
000009   ACCEPT S.
000010   IF S = "Sunny"
000011     DISPLAY "Cloudy"
000012   ELSE
000013     IF S = "Cloudy"
000014       DISPLAY "Rainy"
000015     ELSE
000016       DISPLAY "Sunny"
000017     END-IF
000018   END-IF.
000019   STOP RUN.

