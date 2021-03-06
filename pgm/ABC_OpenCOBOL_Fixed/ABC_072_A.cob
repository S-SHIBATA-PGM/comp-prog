000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_072_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 X          PIC S9(10).
000007 01 ln         PIC X(21).
000008 01 t          PIC 9(10).
000009 01 tmp        PIC 9(10).
000010 01 zs         PIC Z(10)9.
000011 
000012 PROCEDURE DIVISION.
000013   ACCEPT ln.
000014   UNSTRING ln DELIMITED BY SPACE INTO X t.
000015   SUBTRACT t FROM X.
000016   IF X < 0 THEN
000017     MOVE 0 TO tmp
000018   ELSE
000019     MOVE X TO tmp
000020   END-IF.
000021   MOVE tmp TO zs.
000022   DISPLAY FUNCTION TRIM(zs).
000023   STOP RUN.

