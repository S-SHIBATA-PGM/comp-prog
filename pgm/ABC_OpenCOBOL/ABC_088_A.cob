IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(4).
01 N          PIC 9(5).
01 R          PIC 9(3).
01 X          PIC 9(3).

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT A.
  DIVIDE 500 INTO N GIVING X REMAINDER R.
  IF R <= A THEN
    DISPLAY "Yes"
  ELSE
    DISPLAY "No"
  END-IF
  STOP RUN.

