IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(400).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 cur        PIC 9(10) VALUE 1 COMP.
01 len        PIC 9(10) COMP.
01 ans        PIC 9(10) VALUE ZERO.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 k          PIC 9(10) VALUE 1 COMP.
01 l          PIC 9(10) COMP.
01 m          PIC 9(10) VALUE 1 COMP.
01 zs         PIC Z(9)9.
01 N          PIC 9(10).
01 C1.
   03 C11 OCCURS 20 DEPENDING ON N.
      05 C    PIC 9(10).
01 V1.
   03 V11 OCCURS 20 DEPENDING ON N.
      05 V    PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT N.
  MOVE N TO maxlen.
  ACCEPT ln.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO V(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  MOVE 1 TO cur.
  ACCEPT ln.
  PERFORM maxlen TIMES
    PERFORM VARYING l FROM cur BY 1 UNTIL ln(l:1) = SPACE
    END-PERFORM
    COMPUTE len = l - cur
    MOVE ln(cur:len) TO C(k)
    COMPUTE cur = l + 1
    ADD 1 TO k
  END-PERFORM.
  MOVE 1 TO cur.
  PERFORM VARYING m FROM cur BY 1 UNTIL N < m
    IF C(m) < V(m)
      COMPUTE ans = ans + V(m) - C(m)
    END-IF
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs)
  STOP RUN.
