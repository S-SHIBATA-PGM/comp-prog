IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(20).

PROCEDURE DIVISION.
  ACCEPT S.
  IF S(FUNCTION STORED-CHAR-LENGTH(S) - 1:2) = "er" DISPLAY "er"
  ELSE DISPLAY "ist".
  STOP RUN.

