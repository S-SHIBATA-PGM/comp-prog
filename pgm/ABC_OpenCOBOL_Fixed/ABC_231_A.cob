000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_231_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 D         PIC 9(10).
000007 01 zs        PIC Z(2)9.9(2).
000008 
000009 PROCEDURE DIVISION.
000010   ACCEPT D.
000011   COMPUTE zs = D / 100.
000012   DISPLAY FUNCTION TRIM(zs).
000013   STOP RUN.

