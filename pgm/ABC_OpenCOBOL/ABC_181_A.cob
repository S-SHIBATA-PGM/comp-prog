IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(10).
01 d          PIC 9(10).
01 r          PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT N.
  DIVIDE N BY 2 GIVING d REMAINDER r.
  IF ZERO = r THEN
    DISPLAY "White"
  ELSE
    DISPLAY "Black"
  END-IF.
  STOP RUN.

