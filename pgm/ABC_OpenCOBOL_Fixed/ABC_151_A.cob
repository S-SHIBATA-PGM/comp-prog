000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_151_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 C              PIC X(1).
000007 
000008 PROCEDURE DIVISION.
000009   ACCEPT C.
000010   DISPLAY FUNCTION CHAR(FUNCTION ORD(C) + 1).
000011   STOP RUN.

