IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ABC1.
   03 ABC11 OCCURS 3.
      05 ABC  PIC 9(1) VALUE 0.
01 cur        PIC 9(1) VALUE 1.
01 len        PIC 9(1) VALUE 1.
01 ln         PIC X(4).
01 maxlen     PIC 9(1) VALUE 3.

PROCEDURE DIVISION.
  ACCEPT ln.
  PERFORM maxlen TIMES
    IF ln(cur:len) = 'a' THEN
      MOVE 1 TO ABC(1)
    ELSE
      IF ln(cur:len) = 'b' THEN
        MOVE 1 TO ABC(2)
      ELSE
        MOVE 1 TO ABC(3)
      END-IF
    END-IF
    COMPUTE cur = cur + 1
  END-PERFORM.
  IF ABC(1) = 1 AND ABC(2) = 1 AND ABC(3) = 1 THEN
    DISPLAY "Yes"
  ELSE
    DISPLAY "No"
  END-IF.
  STOP RUN.

