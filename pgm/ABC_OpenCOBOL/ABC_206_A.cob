IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(10).
01 price      BINARY-DOUBLE.

PROCEDURE DIVISION.
  ACCEPT N.
  COMPUTE price = 1.08 * N.
  IF price < 206 DISPLAY "Yay!" ELSE IF 206 < price DISPLAY ":("
  ELSE DISPLAY "so-so".
  STOP RUN.

