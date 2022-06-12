000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_134_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 ans        PIC 9(10).
000007 01 r          PIC 9(10).
000008 01 zs         PIC Z(9)9.
000009 
000010 PROCEDURE DIVISION.
000011   ACCEPT r.
000012   COMPUTE ans = 3 * r ** 2.
000013   MOVE ans TO zs.
000014   DISPLAY FUNCTION TRIM(zs).
000015   STOP RUN.
