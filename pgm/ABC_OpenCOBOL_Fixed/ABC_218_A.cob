000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_218_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 N         PIC 9(10).
000007 01 S         PIC X(7).
000008 
000009 PROCEDURE DIVISION.
000010   ACCEPT N.
000011   ACCEPT S.
000012   IF "o" = S(N:1) DISPLAY "Yes" ELSE DISPLAY "No".
000013   STOP RUN.

