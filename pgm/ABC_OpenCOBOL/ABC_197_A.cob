IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(3).

PROCEDURE DIVISION.
  ACCEPT S.
  DISPLAY S(2:1) S(3:1) S(1:1).
  STOP RUN.

