IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 X              PIC 9(10).
01 dv             PIC 9(10).
01 dv5            PIC 9(10).
01 rm             PIC 9(10).
01 ans            PIC 9(10).
01 zs             PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT X.
  COMPUTE dv = X / 500.
  COMPUTE rm = X - dv * 500.
  COMPUTE dv5 = rm / 5.
  COMPUTE ans = dv * 1000 + dv5 * 5.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
