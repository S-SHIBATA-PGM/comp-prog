000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_238_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 n          PIC 9(10).
000007 
000008 PROCEDURE DIVISION.
000009   ACCEPT n.
000010   IF n ** 2 < 2 ** n DISPLAY "Yes" ELSE DISPLAY "No".
000011   STOP RUN.

