000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_084_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 M          PIC 9(2).
000007 
000008 PROCEDURE DIVISION.
000009   ACCEPT M.
000010   SUBTRACT M FROM 48 GIVING M.
000011   DISPLAY M.
000012   STOP RUN.
