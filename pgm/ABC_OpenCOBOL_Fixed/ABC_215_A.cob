000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_215_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 S         PIC X(15).
000007 
000008 PROCEDURE DIVISION.
000009   ACCEPT S.
000010   IF "Hello,World!" = S DISPLAY "AC" ELSE DISPLAY "WA".
000011   STOP RUN.

