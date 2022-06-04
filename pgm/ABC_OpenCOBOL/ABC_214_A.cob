IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N         PIC 9(10).
01 ans       PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT N.
  MOVE 8 TO ans.
  IF 1 <= N AND N <= 125 MOVE 4 TO ans
  ELSE IF 126 <= N AND N <= 211 MOVE 6 TO ans
  END-IF.
  DISPLAY FUNCTION TRIM(ans).
  STOP RUN.
