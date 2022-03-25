IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(30).
01 D          PIC 9(9).
01 N          PIC 9(9).
01 R          PIC 9(1).
01 harshad    PIC 9(2).

PROCEDURE DIVISION.
  ACCEPT N.
  MOVE N TO D.
  MOVE 0 TO harshad.
  PERFORM UNTIL D = 0 DIVIDE 10 INTO D GIVING D REMAINDER R
    ADD R TO harshad
  END-PERFORM.
  DIVIDE harshad INTO N GIVING D REMAINDER R.
  IF R = 0 THEN
    DISPLAY "Yes"
  ELSE
    DISPLAY "No"
  END-IF.
  STOP RUN.
