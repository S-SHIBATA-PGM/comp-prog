IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 D          PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT D.
  EVALUATE D
    WHEN 25
      DISPLAY "Christmas"
    WHEN 24
      DISPLAY "Christmas Eve"
    WHEN 23
      DISPLAY "Christmas Eve Eve"
    WHEN OTHER
      DISPLAY "Christmas Eve Eve Eve"
  END-EVALUATE.
  STOP RUN.
