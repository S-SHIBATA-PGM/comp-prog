IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(10).
01 ans        PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT N.
  IF ZERO = N - 1 MOVE ZERO TO ans ELSE COMPUTE ans = N - 1.
  DISPLAY FUNCTION TRIM(ans).
  STOP RUN.
