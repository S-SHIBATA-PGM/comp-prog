000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_063_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 a          PIC 9(1).
000007 01 b          PIC 9(1).
000008 01 ln         PIC X(3).
000009 01 tmp        PIC 9(2).
000010 01 zs         PIC Z(3).
000011 
000012 PROCEDURE DIVISION.
000013   ACCEPT ln.
000014   UNSTRING ln DELIMITED BY SPACE INTO A B.
000015   ADD a TO b GIVING tmp.
000016   MOVE tmp TO zs.
000017   IF 10 <= tmp THEN
000018     DISPLAY "error"
000019   ELSE
000020     DISPLAY FUNCTION TRIM(zs)
000021   END-IF.
000022   STOP RUN.

