IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 Q          PIC 9(1).

PROCEDURE DIVISION.
  ACCEPT Q.
  IF 1 = Q THEN
    DISPLAY "ABC"
  ELSE
    DISPLAY "chokudai"
  END-IF.
  STOP RUN.
