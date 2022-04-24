IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 N          PIC 9(10).
01 bug        PIC 9(10) VALUE ZERO.
01 cur        PIC 9(10) VALUE 1 COMP.
01 d          PIC 9(10).
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 ln         PIC X(400).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 pgm        PIC 9(10) VALUE ZERO COMP.
01 r          PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT ln.
  MOVE N TO maxlen.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO A
    ADD A TO bug
    IF ZERO NOT = A THEN
      ADD 1 TO pgm
    END-IF
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  DIVIDE bug BY pgm GIVING d REMAINDER r.
  IF ZERO NOT = r THEN
    ADD 1 TO d
  END-IF.
  MOVE d TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

