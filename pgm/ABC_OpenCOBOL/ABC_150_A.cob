IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 K              PIC 9(10).
01 X              PIC 9(10).
01 ln             PIC X(10).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO K X.
  IF X <= 500 * K
      DISPLAY "Yes"
  ELSE
      DISPLAY "No"
  END-IF.
  STOP RUN.

