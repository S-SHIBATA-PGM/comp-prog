000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_264_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 L          PIC 9(10).
000007 01 R          PIC 9(10).
000008 01 atcoder    PIC X(30) VALUE "atcoder".
000009 01 ln         PIC X(30).
000010 
000011 PROCEDURE DIVISION.
000012   ACCEPT ln.
000013   UNSTRING ln DELIMITED SPACE INTO L R.
000014   DISPLAY atcoder(L : R - L + 1).
000015   STOP RUN.

