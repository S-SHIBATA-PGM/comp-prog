IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(5).
01 x          PIC 9(2).
01 y          PIC 9(2).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO x y.
  IF x = 1 OR 3 OR 5 OR 7 OR 8 OR 10 OR 12 THEN
    IF y = 1 OR 3 OR 5 OR 7 OR 8 OR 10 OR 12 THEN
      DISPLAY "Yes"
    ELSE
      DISPLAY "No"
    END-IF
  ELSE
    IF x = 4 OR 6 OR 9 OR 11 THEN
      IF y = 4 OR 6 OR 9 OR 11 THEN
        DISPLAY "Yes"
      ELSE
        DISPLAY "No"
      END-IF
    ELSE
      IF y = 2 THEN
        DISPLAY "Yes"
      ELSE
        DISPLAY "No"
      END-IF
    END-IF
  END-IF.
  STOP RUN.

