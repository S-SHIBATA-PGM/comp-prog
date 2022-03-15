IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ABC1.
   03 ABC11 OCCURS 3.
      05 ABC  PIC 9(2).
01 K          PIC 9(2).
01 cur        PIC 9(2) VALUE 1.
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 len        PIC 9(2).
01 ln         PIC X(30).
01 maxlen     PIC 9(1) VALUE 3.
01 mx         PIC 9(5).
01 tmp        PIC 9(5).
01 zs         PIC Z(6).

PROCEDURE DIVISION.
  ACCEPT ln.
  ACCEPT K.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO ABC(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  ADD ABC(1) ABC(2) ABC(3) TO tmp.
  COMPUTE mx = FUNCTION MAX(ABC(1), ABC(2), ABC(3)).
  SUBTRACT mx FROM tmp.
  COMPUTE mx = mx * (2 ** K).
  ADD mx TO tmp.
  MOVE tmp TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

