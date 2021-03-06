000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_064_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 N          PIC 9(3).
000007 01 a          PIC 9(4).
000008 01 cur        PIC 9(3) VALUE 1.
000009 01 i          PIC 9(18) VALUE 1.
000010 01 j          PIC 9(18).
000011 01 len        PIC 9(3).
000012 01 ln         PIC X(800).
000013 01 maxlen     PIC 9(3).
000014 01 mn         PIC 9(4) VALUE 1001.
000015 01 mx         PIC 9(4) VALUE 0.
000016 01 zs         PIC Z(4)9.
000017 
000018 PROCEDURE DIVISION.
000019   ACCEPT N.
000020   ACCEPT ln.
000021   MOVE N TO maxlen.
000022   PERFORM maxlen TIMES
000023     PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
000024     END-PERFORM
000025     COMPUTE len = j - cur
000026     MOVE ln(cur:len) TO a
000027     COMPUTE mn = FUNCTION min(mn, a)
000028     COMPUTE mx = FUNCTION max(mx, a)
000029     COMPUTE cur = j + 1
000030     ADD 1 TO i
000031   END-PERFORM.
000032   SUBTRACT mn FROM mx.
000033   MOVE mx TO zs.
000034   DISPLAY FUNCTION TRIM(zs).
000035   STOP RUN.

