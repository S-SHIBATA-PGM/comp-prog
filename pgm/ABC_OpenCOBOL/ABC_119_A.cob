IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(8).

PROCEDURE DIVISION.
  ACCEPT S.
  IF S <= "2019/04/30"
    DISPLAY "Heisei"
  ELSE
    DISPLAY "TBD"
  END-IF.
  STOP RUN.