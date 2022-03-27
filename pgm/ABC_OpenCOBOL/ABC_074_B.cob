IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 K          PIC 9(3).
01 N          PIC 9(3).
01 ans        PIC X(5).
01 cur        PIC 9(3) VALUE 1.
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 len        PIC 9(3).
01 ln         PIC X(300).
01 maxlen     PIC 9(3).
01 sm         PIC 9(5) VALUE 0.
01 x          PIC 9(3).
01 zs         PIC Z(6).

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT K.
  ACCEPT ln.
  MOVE N TO maxlen.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO x
    COMPUTE x = FUNCTION MIN(x, K - x)
    MULTIPLY 2 BY x
    ADD x TO sm
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  MOVE sm TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

