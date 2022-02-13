IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(400).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 cur        PIC 9(10) VALUE 1 COMP.
01 len        PIC 9(10) COMP.
01 ans        PIC 9(10) VALUE ZERO.
01 height     PIC 9(10) VALUE ZERO.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 zs         PIC Z(9)9.
01 N          PIC 9(10).
01 H1.
   03 H11 OCCURS 20 DEPENDING ON N.
      05 H    PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT N.
  MOVE N TO maxlen.
  ACCEPT ln.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO H(i)
    IF height <= H(i)
      MOVE H(i) TO height
      ADD 1 TO ans
    END-IF
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs)
  STOP RUN.
