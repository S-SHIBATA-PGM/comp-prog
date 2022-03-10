IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 INP        PIC X(1100).
01 N          PIC 9(3).
01 cur        PIC 9(4) VALUE 1.
01 df         PIC 9(10).
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 len        PIC 9(4).
01 maxlen     PIC 9(3).
01 mn         PIC 9(10).
01 mx         PIC 9(10).
01 zs         PIC Z(10)9.

PROCEDURE DIVISION.
  ACCEPT N.
  MOVE N TO maxlen.
  ACCEPT INP.
  MOVE 1000000001 TO mn.
  MOVE 0 TO mx.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1
      UNTIL INP(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE INP(cur:len) TO A
    COMPUTE mn = FUNCTION MIN(mn, A)
    COMPUTE mx = FUNCTION MAX(mx, A)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  SUBTRACT mn FROM mx GIVING df.
  MOVE df TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

