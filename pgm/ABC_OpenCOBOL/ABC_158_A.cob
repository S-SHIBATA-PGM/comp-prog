IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S              PIC X(3).
01 cnt            PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT S.
  INSPECT S TALLYING cnt FOR ALL "A".
  IF cnt = 1 OR 2
      DISPLAY "Yes"
  ELSE
      DISPLAY "No"
  END-IF.
  STOP RUN.
