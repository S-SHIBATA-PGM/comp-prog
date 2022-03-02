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
01 A1.
   03 A11 OCCURS 10.
      05 A    PIC S9(10).

PROCEDURE DIVISION.
  ACCEPT ln.
  MOVE 10 TO maxlen.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    IF ln(cur:len) = " "
      EXIT PERFORM
    END-IF
    MOVE ln(cur:len) TO A(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  ADD 1 TO ans.
  MOVE A(ans) TO ans.
  ADD 1 TO ans.
  MOVE A(ans) TO ans.
  ADD 1 TO ans.
  MOVE A(ans) TO ans.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
