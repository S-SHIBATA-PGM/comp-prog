000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_197_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 S          PIC X(3).
000007 
000008 PROCEDURE DIVISION.
000009   ACCEPT S.
000010   DISPLAY S(2:1) S(3:1) S(1:1).
000011   STOP RUN.

