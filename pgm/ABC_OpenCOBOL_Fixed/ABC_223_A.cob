000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_223_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 X         PIC 9(10).
000007 01 d         PIC 9(10).
000008 01 r         PIC 9(10).
000009 
000010 PROCEDURE DIVISION.
000011   ACCEPT X.
000012   DIVIDE X BY 100 GIVING d REMAINDER r.
000013   IF ZERO = X DISPLAY "No"
000014   ELSE IF ZERO < r DISPLAY "No"
000015   ELSE DISPLAY "Yes".
000016   STOP RUN.

