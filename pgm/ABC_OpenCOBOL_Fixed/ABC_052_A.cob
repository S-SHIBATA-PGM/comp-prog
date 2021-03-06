000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_052_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC 9(5).
000007 01 B          PIC 9(9).
000008 01 C          PIC 9(5).
000009 01 D          PIC 9(9).
000010 01 ln         PIC X(23).
000011 01 zs         PIC Z(10).
000012 
000013 PROCEDURE DIVISION.
000014   ACCEPT ln.
000015   UNSTRING ln DELIMITED BY SPACE INTO A B C D.
000016   MULTIPLY A BY B.
000017   MULTIPLY C BY D.
000018   COMPUTE B = FUNCTION MAX(B, D).
000019   MOVE B TO zs.
000020   DISPLAY FUNCTION TRIM(zs).
000021   STOP RUN.

