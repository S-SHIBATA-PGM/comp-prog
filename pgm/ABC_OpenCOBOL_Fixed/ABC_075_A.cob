000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_075_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC S9(3).
000007 01 B          PIC S9(3).
000008 01 C          PIC S9(3).
000009 01 ln         PIC X(14).
000010 01 zs         PIC -(4)9.
000011 
000012 PROCEDURE DIVISION.
000013   ACCEPT ln.
000014   UNSTRING ln DELIMITED BY SPACE INTO A B C.
000015   IF A = B THEN
000016     MOVE C TO zs
000017   ELSE
000018     IF B = C THEN
000019       MOVE A TO zs
000020     ELSE
000021       MOVE B TO zs
000022     END-IF
000023   END-IF.
000024   DISPLAY FUNCTION TRIM(zs).
000025   STOP RUN.

