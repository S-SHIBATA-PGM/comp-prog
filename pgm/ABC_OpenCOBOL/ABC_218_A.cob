IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N         PIC 9(10).
01 S         PIC X(7).

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT S.
  IF "o" = S(N:1) DISPLAY "Yes" ELSE DISPLAY "No".
  STOP RUN.
