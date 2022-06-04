IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S         PIC 9(10).
01 T         PIC 9(10).
01 X         PIC 9(10).
01 ln        PIC X(10).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO S T X.
  IF T < S
    IF X < S
      IF S <= X + 24 AND X + 24 < T + 24 DISPLAY "Yes"
      ELSE DISPLAY "No"
    ELSE
      IF S <= X AND X <= T + 24 DISPLAY "Yes"
      ELSE DISPLAY "No"
  ELSE IF S <= X AND X <= T DISPLAY "Yes"
  ELSE DISPLAY "No".
  STOP RUN.
