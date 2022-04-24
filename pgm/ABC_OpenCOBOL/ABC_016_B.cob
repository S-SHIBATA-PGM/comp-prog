IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 B          PIC 9(10).
01 C          PIC 9(10).
01 ans        PIC X(1) VALUE SPACE.
01 ln         PIC X(30).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO A B C.
  IF C = A + B THEN
    IF C = A - B THEN
      MOVE "?" TO ans
    ELSE
      MOVE "+" TO ans
    END-IF
  ELSE
    IF C = A - B THEN
      MOVE "-" TO ans
    ELSE
      MOVE "!" TO ans
    END-IF
  END-IF.
  DISPLAY ans.
  STOP RUN.

