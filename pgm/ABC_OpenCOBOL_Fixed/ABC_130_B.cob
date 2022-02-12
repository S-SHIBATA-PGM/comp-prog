000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID. PROGRAM_ID.
000030
000040 DATA DIVISION.
000050 WORKING-STORAGE SECTION.
000060 01 ln         PIC X(400).
000070 01 maxlen     PIC 9(10) VALUE 100 COMP.
000080 01 cur        PIC 9(10) VALUE 1 COMP.
000090 01 i          PIC 9(10) VALUE 1 COMP.
000100 01 j          PIC 9(10) COMP.
000110 01 k          PIC 9(10) COMP.
000120 01 len        PIC 9(10) COMP.
000130 01 ans        PIC 9(10) VALUE 1.
000140 01 zs         PIC Z(9)9.
000150 01 D          PIC 9(10) VALUE 0.
000160 01 N          PIC 9(10).
000170 01 X          PIC 9(10).
000180 01 L1.
000190    03 L11 OCCURS 100 DEPENDING ON N.
000200       05 L PIC S9(10).
000210
000220 PROCEDURE DIVISION.
000230   ACCEPT ln.
000240   UNSTRING ln DELIMITED BY SPACE INTO N X.
000250   ACCEPT ln.
000260   MOVE N TO maxlen.
000270   PERFORM maxlen TIMES
000280     PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
000290     END-PERFORM
000300     COMPUTE len = j - cur
000310     MOVE ln(cur:len) TO L(i)
000320     COMPUTE cur = j + 1
000330     ADD 1 TO i
000340   END-PERFORM.
000350   PERFORM VARYING k FROM 1 BY 1 UNTIL N < k
000360     ADD L(k) TO D
000370     IF D <= X
000380       ADD 1 TO ans
000390     ELSE
000400       EXIT PERFORM
000410   END-PERFORM.
000420   MOVE ans TO zs.
000430   DISPLAY FUNCTION TRIM(zs).
000440   STOP RUN.
