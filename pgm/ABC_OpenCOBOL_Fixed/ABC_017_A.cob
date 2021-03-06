000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_017_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 e          PIC 9(10).
000007 01 ln         PIC X(400).
000008 01 num        PIC 9(10) VALUE ZERO.
000009 01 s          PIC 9(10).
000010 01 zs         PIC Z(9)9.
000011 
000012 PROCEDURE DIVISION.
000013   ACCEPT ln.
000014   UNSTRING ln DELIMITED BY SPACE INTO s e.
000015   COMPUTE num = num + s / 10 * e.
000016   ACCEPT ln.
000017   UNSTRING ln DELIMITED BY SPACE INTO s e.
000018   COMPUTE num = num + s / 10 * e.
000019   ACCEPT ln.
000020   UNSTRING ln DELIMITED BY SPACE INTO s e.
000021   COMPUTE num = num + s / 10 * e.
000022   MOVE num TO zs.
000023   DISPLAY FUNCTION TRIM(zs).
000024   STOP RUN.

