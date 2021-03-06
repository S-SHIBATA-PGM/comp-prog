IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 b          PIC 9(1).
01 g          PIC 9(2).
01 ln         PIC X(5).
01 num        PIC 9(3) VALUE 0.
01 r          PIC 9(3).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO r g b.
  MULTIPLY 100 BY r.
  MULTIPLY 10 BY g.
  ADD r g TO b GIVING num.
  IF FUNCTION MOD(num, 4) = 0 THEN
    DISPLAY "YES"
  ELSE
    DISPLAY "NO"
  END-IF.
  STOP RUN.

