IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(10).
01 d          PIC 9(10).
01 r          FLOAT-LONG.
01 saving     FLOAT-LONG.
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT N.
  COMPUTE saving = FUNCTION SQRT(1 + 8 * N) - 1.
  DIVIDE saving BY 2 GIVING d REMAINDER r.
  IF 0 < r ADD 1 TO d.
  MOVE d TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

