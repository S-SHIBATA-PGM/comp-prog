000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_089_A.
000003
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 N          PIC 9(4).
000007 01 ans        PIC X(3).
000008 01 tmp        PIC 9(4).
000009 01 zs         PIC Z(3)9.
000010
000011 PROCEDURE DIVISION.
000012   ACCEPT N.
000013   DIVIDE 3 INTO N GIVING tmp.
000014   MOVE tmp TO zs.
000015   DISPLAY FUNCTION TRIM(zs).
000016   STOP RUN.

