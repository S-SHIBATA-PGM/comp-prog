000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_034_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 ln         PIC X(30).
000007 01 d          PIC 9(10).
000008 01 n          PIC 9(10).
000009 01 r          PIC 9(10).
000010 01 zs         PIC Z(9)9.
000011 
000012 PROCEDURE DIVISION.
000013   ACCEPT n.
000014   DIVIDE n BY 2 GIVING d REMAINDER r.
000015   IF r = 1 THEN
000016     ADD 1 TO n
000017   ELSE
000018     SUBTRACT 1 FROM n
000019   END-IF.
000020   MOVE n TO zs.
000021   DISPLAY FUNCTION TRIM(zs).
000022   STOP RUN.

