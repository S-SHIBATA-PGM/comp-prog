IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 LN             PIC X(3).
01 a              PIC 9(1).
01 b              PIC 9(1).
01 x              PIC 9(1).
01 i              PIC 9(2).
01 ans            PIC X(9).

PROCEDURE DIVISION.
  ACCEPT LN.
  UNSTRING LN DELIMITED BY SPACE INTO a b.
  IF b < a
      MOVE a TO x
      MOVE b TO a
      MOVE x TO b
  END-IF.
  PERFORM VARYING i FROM 1 BY 1 UNTIL b < i
      MOVE a TO ans(i:1)
  END-PERFORM
  DISPLAY ans.
  STOP RUN.
