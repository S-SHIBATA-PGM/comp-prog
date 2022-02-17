IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 ans        PIC 9(10).
01 zs         PIC Z(9)9.
01 N          PIC 9(10).
01 p          PIC 9(10).
01 pmax       PIC 9(10) VALUE ZERO.
01 psum       PIC 9(10) VALUE ZERO.

PROCEDURE DIVISION.
  ACCEPT N.
  MOVE N TO maxlen.
  PERFORM maxlen TIMES
    ACCEPT p
    ADD p TO psum
    IF pmax < p
      MOVE p TO pmax
    END-IF
  END-PERFORM.
  COMPUTE ans = psum - pmax / 2.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
