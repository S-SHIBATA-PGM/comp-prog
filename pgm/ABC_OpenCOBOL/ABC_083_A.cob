IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(11).
01 A          PIC 9(2).
01 B          PIC 9(2).
01 C          PIC 9(2).
01 D          PIC 9(2).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO A B C D.
  IF A + B < C + D THEN
    DISPLAY "Right"
  ELSE
    IF A + B = C + D THEN
      DISPLAY "Balanced"
    ELSE
      DISPLAY "Left"
    END-IF
  END-IF.
  STOP RUN.

