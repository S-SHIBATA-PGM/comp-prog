IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(4).

PROCEDURE DIVISION.
  ACCEPT N.
  IF 999 < N THEN
    DISPLAY "ABD"
  ELSE
    DISPLAY "ABC"
  END-IF.
  STOP RUN.

