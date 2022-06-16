IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 LN             PIC X(10).
01 a              PIC 9(1).
01 ans            PIC X(10).
01 b              PIC 9(1).
01 ca             PIC X(1).
01 i              PIC 9(10).
01 n              PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT LN.
  UNSTRING LN DELIMITED BY SPACE INTO a b.
  IF a < b
      MOVE b TO n
      MOVE a TO ca
  ELSE
      MOVE a TO n
      MOVE b TO ca
  END-IF.
  PERFORM VARYING i FROM 1 BY 1 UNTIL n < i
      MOVE ca TO ans(i:1)
  END-PERFORM.
  DISPLAY ans(1:n).
  STOP RUN.

