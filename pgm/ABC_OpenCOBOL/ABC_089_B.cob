IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(3).
01 S          PIC X(1).
01 cnt        PIC 9(3).
01 cur        PIC 9(3) VALUE 1.
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 len        PIC 9(3).
01 ln         PIC X(200).
01 maxlen     PIC 9(3).

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT ln.
  MOVE 0 TO cnt.
  MOVE N TO maxlen.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1
      UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO S
    IF S = 'Y' THEN
      MOVE 1 TO cnt
      EXIT PERFORM
    END-IF
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  IF 0 < cnt THEN
    DISPLAY "Four"
  ELSE
    DISPLAY "Three"
  END-IF.
  STOP RUN.

