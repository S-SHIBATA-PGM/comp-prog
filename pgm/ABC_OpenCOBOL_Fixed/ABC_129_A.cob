000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID. PROGRAM_ID.
000030
000040 DATA DIVISION.
000050 WORKING-STORAGE SECTION.
000060 01 ln         PIC X(400).
000070 01 cur        PIC 9(10) VALUE 1 COMP.
000080 01 i          PIC 9(10) VALUE 1 COMP.
000090 01 j          PIC 9(10) COMP.
000100 01 len        PIC 9(10) COMP.
000110 01 ans        PIC 9(10).
000120 01 zs         PIC Z(9)9.
000130 01 PQR1.
000140    03 PQR11 OCCURS 3.
000150       05 PQR PIC S9(10).
000160
000170 PROCEDURE DIVISION.
000180   ACCEPT ln.
000190   PERFORM 3 TIMES
000200     PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
000210     END-PERFORM
000220     COMPUTE len = j - cur
000230     MOVE ln(cur:len) TO PQR(i)
000240     COMPUTE cur = j + 1
000250     ADD 1 TO i
000260   END-PERFORM.
000270   SORT PQR11 ON ASCENDING PQR.
000280   COMPUTE ans = PQR(1) + PQR(2).
000290   MOVE ans TO zs.
000390   DISPLAY FUNCTION TRIM(zs).
000400   STOP RUN.
