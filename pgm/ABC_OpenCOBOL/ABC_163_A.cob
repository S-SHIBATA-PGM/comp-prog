IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 R              PIC 9(3)V9(7).
01 PI             PIC 9(3)V9(7) VALUE 3.1415926.
01 ans            PIC 9(3)V9(7).
01 zs             PIC Z(2)9.9(7).

PROCEDURE DIVISION.
  ACCEPT R.
  COMPUTE ans = 2 * R * PI.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.