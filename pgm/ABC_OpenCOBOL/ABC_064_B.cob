IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(3).
01 a          PIC 9(4).
01 cur        PIC 9(3) VALUE 1.
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 len        PIC 9(3).
01 ln         PIC X(800).
01 maxlen     PIC 9(3).
01 mn         PIC 9(4) VALUE 1001.
01 mx         PIC 9(4) VALUE 0.
01 zs         PIC Z(4)9.

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT ln.
  MOVE N TO maxlen.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO a
    COMPUTE mn = FUNCTION min(mn, a)
    COMPUTE mx = FUNCTION max(mx, a)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  SUBTRACT mn FROM mx.
  MOVE mx TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

