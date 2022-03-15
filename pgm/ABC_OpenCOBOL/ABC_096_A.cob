IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ab1.
   03 ab11 OCCURS 2.
      05 ab   PIC 9(3).
01 cur        PIC 9(2) VALUE 1.
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 len        PIC 9(2).
01 ln         PIC X(30).
01 maxlen     PIC 9(1) VALUE 2.
01 zs         PIC Z(3).

PROCEDURE DIVISION.
  ACCEPT ln.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO ab(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  IF ab(2) < ab(1) THEN
    SUBTRACT 1 FROM ab(1)
  END-IF.
  MOVE ab(1) TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

