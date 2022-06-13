IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A1.
   03 A11 OCCURS 100 DEPENDING ON N.
      05 A    PIC S9(10).
01 B1.
   03 B11 OCCURS 100 DEPENDING ON N.
      05 B    PIC S9(10).
01 C1.
   03 C11 OCCURS 100 DEPENDING ON num.
      05 C    PIC S9(10).
01 N          PIC 9(10).
01 ans        PIC 9(10).
01 cur        PIC 9(10) VALUE 1 COMP.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 ln         PIC X(400).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 num        PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT ln.
  MOVE N TO maxlen.
  COMPUTE num = N - 1.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO A(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  ACCEPT ln.
  MOVE 1 TO cur.
  MOVE 1 TO i.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO B(i)
    COMPUTE ans = ans + B(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  ACCEPT ln.
  MOVE num TO maxlen.
  MOVE 1 TO cur.
  MOVE 1 TO i.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO C(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  MOVE N TO maxlen.
  MOVE 1 TO cur.
  MOVE 1 TO i.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    IF 1 < i
      IF A(i - 1) + 1 = A(i)
        COMPUTE ans = ans + C(A(i - 1))
      END-IF
    END-IF
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

