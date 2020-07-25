IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(400).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 cur        PIC 9(10) VALUE 1 COMP.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 ans        PIC 9(10) VALUE ZERO.
01 zs         PIC Z(9)9.
01 n          PIC 9(10).
01 p1.
   03 p11 OCCURS 100 DEPENDING ON n.
      05 p    PIC S9(10).

PROCEDURE DIVISION.
  ACCEPT n.
  ACCEPT ln.
  MOVE n TO maxlen.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO p(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  PERFORM VARYING i FROM 2 BY 1 UNTIL n - 1 < i
    IF p(i - 1) < p(i) AND p(i) < p(i + 1)
      ADD 1 TO ans
    ELSE
      IF p(i + 1) < p(i) AND p(i) < p(i - 1)
        ADD 1 TO ans
      END-IF
    END-IF
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
