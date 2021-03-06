000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_082_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 D          PIC 9(3).
000007 01 R          PIC 9(3).
000008 01 a          PIC 9(3).
000009 01 b          PIC 9(3).
000010 01 ln         PIC X(7).
000011 01 zs         PIC Z(3)9.
000012 
000013 PROCEDURE DIVISION.
000014   ACCEPT ln.
000015   UNSTRING ln DELIMITED BY SPACE INTO a b.
000016   ADD a TO b.
000017   DIVIDE 2 INTO b GIVING D REMAINDER R.
000018   ADD R TO D.
000019   MOVE D TO zs.
000020   DISPLAY FUNCTION TRIM(zs).
000021   STOP RUN.

