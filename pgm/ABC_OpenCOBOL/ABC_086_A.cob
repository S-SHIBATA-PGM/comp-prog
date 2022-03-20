IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ab1.
   03 ab11 OCCURS 2.
      05 ab   PIC 9(5).
01 cur        PIC 9(12) VALUE 1.
01 d          PIC 9(9).
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 len        PIC 9(12).
01 ln         PIC X(12).
01 maxlen     PIC 9(1) VALUE 2.
01 x          PIC 9(9).

PROCEDURE DIVISION.
  ACCEPT ln.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO AB(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  MULTIPLY AB(1) BY AB(2) GIVING x.
  DIVIDE 2 INTO x GIVING x REMAINDER d.
  IF d = 0 THEN
    DISPLAY "Even"
  ELSE
    DISPLAY "Odd"
  END-IF.
  STOP RUN.

