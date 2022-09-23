000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_265_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 N          PIC 9(10).
000007 01 X          PIC 9(10).
000008 01 Y          PIC 9(10).
000009 01 ln         PIC X(30).
000010 01 q          PIC 9(10).
000011 01 r          PIC 9(10).
000012 01 zs         PIC Z(9)9.
000013 
000014 PROCEDURE DIVISION.
000015   ACCEPT ln.
000016   UNSTRING ln DELIMITED SPACE INTO X Y N.
000017   DIVIDE N BY 3 GIVING q REMAINDER r.
000018   COMPUTE zs = FUNCTION MIN(N * X q * Y + r * X).
000019   DISPLAY FUNCTION TRIM(zs).
000020   STOP RUN.
