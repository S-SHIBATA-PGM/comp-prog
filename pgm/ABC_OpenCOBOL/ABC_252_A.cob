IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT N.
  DISPLAY FUNCTION CHAR(N + 1).
  STOP RUN.

