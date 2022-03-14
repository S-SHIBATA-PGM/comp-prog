IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 abcd1.
   03 abcd11 OCCURS 4.
      05 abcd PIC 9(3).
01 cur        PIC 9(2) VALUE 1.
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 len        PIC 9(2).
01 ln         PIC X(16).
01 maxlen     PIC 9(1) VALUE 4.
01 tmp12      PIC 9(3).
01 tmp13      PIC 9(3).
01 tmp23      PIC 9(3).

PROCEDURE DIVISION.
  ACCEPT ln.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO abcd(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  COMPUTE tmp12 = abcd(1) - abcd(2).
  COMPUTE tmp13 = abcd(1) - abcd(3).
  COMPUTE tmp23 = abcd(2) - abcd(3).
  IF (tmp13 <= abcd(4)) THEN
    DISPLAY "Yes"
  ELSE
    IF (tmp12 <= abcd(4)) AND (tmp23 <= abcd(4)) THEN
      DISPLAY "Yes"
    ELSE
      DISPLAY "No"
    END-IF
  END-IF.
  STOP RUN.

