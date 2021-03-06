000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_030_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 d1         PIC 9(10)V9(4).
000007 01 d2         PIC 9(10)V9(4).
000008 01 ln         PIC X(30).
000009 01 m          PIC 9(10).
000010 01 n          PIC 9(10).
000011 01 nr         PIC 9(10).
000012 01 zs         PIC Z(9)9.9(4).
000013 
000014 PROCEDURE DIVISION.
000015   ACCEPT ln.
000016   UNSTRING ln DELIMITED BY SPACE INTO n m.
000017   DIVIDE n BY 12 GIVING n REMAINDER nr.
000018   *> 360 / 12 + 30 / 60
000019   *> 360 / 60
000020   COMPUTE d1 = FUNCTION ABS(nr * 30 + m * 0.5 - m * 6).
000021   COMPUTE d2 = 360 - d1.
000022   MOVE FUNCTION MIN(d1 d2) TO zs.
000023   DISPLAY FUNCTION TRIM(zs).
000024   STOP RUN.

