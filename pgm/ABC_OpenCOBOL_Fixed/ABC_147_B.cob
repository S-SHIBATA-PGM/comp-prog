000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_147_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC 9(10).
000007 01 B          PIC 9(10).
000008 01 S          PIC X(100).
000009 01 ans        PIC 9(10) VALUE ZERO.
000010 01 i          PIC 9(10).
000011 01 zs         PIC Z(9)9.
000012 
000013 PROCEDURE DIVISION.
000014   ACCEPT S.
000015   PERFORM VARYING i FROM 1 BY 1 UNTIL
000016   FUNCTION STORED-CHAR-LENGTH(S) / 2 < i
000017     IF S(i : 1) <>
000018     S(FUNCTION STORED-CHAR-LENGTH(S) - i + 1 : 1) THEN
000019       ADD 1 TO ans
000020     END-IF
000021   END-PERFORM.
000022   MOVE ans TO zs.
000023   DISPLAY FUNCTION TRIM(zs).
000024   STOP RUN.

