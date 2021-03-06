000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_253_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 H          PIC 9(10).
000007 01 S          PIC X(100).
000008 01 W          PIC 9(10).
000009 01 i          PIC 9(10).
000010 01 idx        PIC 9(10) VALUE 1.
000011 01 j          PIC 9(10).
000012 01 ln         PIC X(30).
000013 01 points1.
000014    03 points OCCURS 2.
000015       05 x    PIC 9(10).
000016       05 y    PIC 9(10).
000017 01 zs         PIC Z(9)9.
000018 
000019 PROCEDURE DIVISION.
000020   ACCEPT ln.
000021   UNSTRING ln DELIMITED SPACE INTO H W.
000022   PERFORM VARYING i FROM 1 BY 1 UNTIL H < i
000023     ACCEPT S
000024     PERFORM VARYING j FROM 1 BY 1 UNTIL W < j
000025       IF S(j:1) = "o"
000026         MOVE i TO x(idx)
000027         MOVE j TO y(idx)
000028         ADD 1 TO idx
000029     END-PERFORM
000030   END-PERFORM.
000031   COMPUTE zs = FUNCTION ABS(x(1) - x(2))
000032   + FUNCTION ABS(y(1) - y(2)).
000033   DISPLAY FUNCTION TRIM(zs).
000034   STOP RUN.

