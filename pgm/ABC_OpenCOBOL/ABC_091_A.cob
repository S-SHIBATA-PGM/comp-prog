IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ABC1.
   03 ABC11 OCCURS 3.
      05 ABC  PIC 9(4).
01 cur        PIC 9(13) VALUE 1.
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 len        PIC 9(13).
01 ln         PIC X(13).
01 maxlen     PIC 9(1) VALUE 3.
01 tmp        PIC 9(4).

PROCEDURE DIVISION.
  ACCEPT ln.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO ABC(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  ADD ABC(1) TO tmp.
  ADD ABC(2) TO tmp.
  IF tmp < ABC(3) THEN
    DISPLAY "No"
  ELSE
    DISPLAY "Yes"
  END-IF.
  STOP RUN.

