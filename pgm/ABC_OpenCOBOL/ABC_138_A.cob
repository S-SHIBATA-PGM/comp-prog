IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 a          PIC 9(10).
01 s          PIC X(10).

PROCEDURE DIVISION.
  ACCEPT a.
  ACCEPT s.
  IF 3200 <= a
    DISPLAY FUNCTION TRIM(s)
  ELSE
    DISPLAY "red"
  END-IF.
  STOP RUN.
