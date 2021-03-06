IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 B          PIC S9(10).
01 X          PIC 9(10).
01 ln         PIC X(32).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO X A B.
  SUBTRACT A FROM B.
  IF B <= 0 THEN
    DISPLAY "delicious"
  ELSE
    IF B <= X THEN
      DISPLAY "safe"
    ELSE
      DISPLAY "dangerous"
    END-IF
  END-IF.
  STOP RUN.

