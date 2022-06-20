IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ans        PIC 9(10).
01 cur        PIC 9(10) VALUE 1 COMP.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 ln         PIC X(400).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 x1.
   03 x11 OCCURS 5 INDEXED BY ix.
      05 x    PIC S9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  MOVE 5 TO maxlen.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO x(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  SET ix TO 1.
  PERFORM UNTIL 5 < ix
    SEARCH x11 VARYING ix
      AT END
        CONTINUE
      WHEN ZERO = x(ix)
        MOVE ix TO ans
        SET ix UP BY 1
    END-SEARCH
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

