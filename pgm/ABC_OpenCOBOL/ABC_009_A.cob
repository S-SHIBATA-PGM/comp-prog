IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(10).
01 d          PIC 9(10).
01 r          PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT N.
  DIVIDE N BY 2 GIVING d REMAINDER r.
  IF ZERO < r THEN
    ADD 1 TO d
  END-IF.
  MOVE d TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

