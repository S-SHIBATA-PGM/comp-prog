IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(4).
01 ans        PIC 9(1).
01 i          PIC 9(1).
01 sary1.
   03 sary11 OCCURS 4.
      05 sary PIC X(1).
01 tmp        PIC S9(1).

PROCEDURE DIVISION.
  ACCEPT S.
  MOVE S(1:1) TO sary(1).
  MOVE S(2:1) TO sary(2).
  MOVE S(3:1) TO sary(3).
  MOVE S(4:1) TO sary(4).
  MOVE 0 TO tmp.
  PERFORM VARYING i FROM 1 BY 1 UNTIL 4 < i
    IF sary(i) = '+' THEN
      COMPUTE tmp = tmp + 1
    ELSE
      COMPUTE tmp = tmp - 1
    END-IF
  END-PERFORM.
  IF 0 <= tmp THEN
    MOVE tmp TO ans
    DISPLAY ans
  ELSE
    DISPLAY tmp
  END-IF.
  STOP RUN.

