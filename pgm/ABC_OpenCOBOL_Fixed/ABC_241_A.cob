000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_241_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 ln         PIC X(400).
000007 01 maxlen     PIC 9(10) VALUE 100 COMP.
000008 01 cur        PIC 9(10) VALUE 1 COMP.
000009 01 i          PIC 9(10) VALUE 1 COMP.
000010 01 j          PIC 9(10) COMP.
000011 01 len        PIC 9(10) COMP.
000012 01 ans        PIC 9(10) VALUE ZERO.
000013 01 zs         PIC Z(9)9.
000014 01 A1.
000015    03 A11 OCCURS 10.
000016       05 A    PIC S9(10).
000017 
000018 PROCEDURE DIVISION.
000019   ACCEPT ln.
000020   MOVE 10 TO maxlen.
000021   PERFORM maxlen TIMES
000022     PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
000023     END-PERFORM
000024     COMPUTE len = j - cur
000025     IF ln(cur:len) = " "
000026       EXIT PERFORM
000027     END-IF
000028     MOVE ln(cur:len) TO A(i)
000029     COMPUTE cur = j + 1
000030     ADD 1 TO i
000031   END-PERFORM.
000032   ADD 1 TO ans.
000033   MOVE A(ans) TO ans.
000034   ADD 1 TO ans.
000035   MOVE A(ans) TO ans.
000036   ADD 1 TO ans.
000037   MOVE A(ans) TO ans.
000038   MOVE ans TO zs.
000039   DISPLAY FUNCTION TRIM(zs).
000040   STOP RUN.
