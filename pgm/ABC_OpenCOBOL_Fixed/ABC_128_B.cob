000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_128_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 ln         PIC X(400).
000007 01 maxlen     PIC 9(10) VALUE 100 COMP.
000008 01 i          PIC 9(10) VALUE 1 COMP.
000009 01 j          PIC 9(10) COMP.
000010 01 zs         PIC Z(9)9.
000011 01 N          PIC 9(10).
000012 01 restaurant1.
000013    03 restaurant11 OCCURS 100 DEPENDING ON N.
000014       05 num  PIC 9(10).
000015       05 S    PIC X(10).
000016       05 P    PIC 9(10).
000017 
000018 PROCEDURE DIVISION.
000019   ACCEPT N.
000020   MOVE N TO maxlen.
000021   PERFORM maxlen TIMES
000022     MOVE i TO num(i)
000023     ACCEPT ln
000024     UNSTRING ln DELIMITED BY SPACE INTO S(i) P(i)
000025     ADD 1 TO i
000026   END-PERFORM.
000027   SORT restaurant11 ASCENDING S
000028                     DESCENDING P.
000029   PERFORM VARYING j FROM 1 BY 1 UNTIL N < j
000030     MOVE num(j) TO zs
000031     DISPLAY FUNCTION TRIM(zs)
000032   END-PERFORM.
000033   STOP RUN.