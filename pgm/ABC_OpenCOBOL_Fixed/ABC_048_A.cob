000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_048_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 a          PIC X(100).
000007 01 c          PIC X(100).
000008 01 ln         PIC X(302).
000009 01 x          PIC X(100).
000010 
000011 PROCEDURE DIVISION.
000012   ACCEPT ln.
000013   UNSTRING ln DELIMITED BY SPACE INTO a x c.
000014   DISPLAY a(1:1) x(1:1) c(1:1)
000015   STOP RUN.

