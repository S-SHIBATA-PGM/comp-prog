IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 C         PIC X(3).

PROCEDURE DIVISION.
  ACCEPT C.
  IF C(1:1) = C(2:1) AND C(3:1) THEN
    DISPLAY "Won"
  ELSE
    DISPLAY "Lost"
  END-IF.
  STOP RUN.

