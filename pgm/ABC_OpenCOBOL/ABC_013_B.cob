IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 a          PIC 9(10).
01 b          PIC 9(10).
01 x          PIC 9(10).
01 y          PIC 9(10).
01 z          PIC 9(10).
01 ans        PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT a.
  ACCEPT b.
  COMPUTE x = 10 + a - b.
  COMPUTE y = 10 + b - a.
  COMPUTE z = FUNCTION ABS(a - b).
  COMPUTE ans = FUNCTION MIN(x y z).
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

