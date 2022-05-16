000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_202_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 a         PIC 9(10).
000007 01 ans       PIC Z(9)9.
000008 01 b         PIC 9(10).
000009 01 c         PIC 9(10).
000010 01 ln        PIC X(30).
000011 
000012 PROCEDURE DIVISION.
000013   ACCEPT ln.
000014   UNSTRING ln DELIMITED SPACE INTO a b c.
000015   COMPUTE ans = 7 * 3 - a - b - c.
000016   DISPLAY FUNCTION TRIM(ans).
000017   STOP RUN.

