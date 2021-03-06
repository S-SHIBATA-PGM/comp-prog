000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_095_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 K          PIC 9(2).
000007 01 S1.
000008    03 S11 OCCURS 3.
000009       05 S    PIC X(1).
000010 01 i          PIC 9(18) VALUE 1.
000011 01 j          PIC 9(18).
000012 01 len        PIC 9(2) VALUE 1.
000013 01 ln         PIC X(10).
000014 01 maxlen     PIC 9(1) VALUE 3.
000015 01 x          PIC 9(4).
000016 01 zs         PIC Z(5).
000017 
000018 PROCEDURE DIVISION.
000019   ACCEPT ln.
000020   PERFORM maxlen TIMES
000021     MOVE ln(i:len) TO S11(i)
000022     ADD 1 TO i
000023   END-PERFORM.
000024   MOVE 700 TO x.
000025   PERFORM VARYING j FROM 1 BY 1 UNTIL 3 < j
000026     IF S(j) = 'o' THEN
000027       ADD 100 TO x
000028     END-IF
000029   END-PERFORM.
000030   MOVE x TO zs.
000031   DISPLAY FUNCTION TRIM(zs).
000032   STOP RUN.

