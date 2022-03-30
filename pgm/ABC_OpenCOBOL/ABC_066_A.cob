IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 a          PIC 9(5).
01 b          PIC 9(5).
01 c          PIC 9(5).
01 ln         PIC X(17).
01 tmp        PIC 9(5).
01 zs         PIC Z(6).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO a b c.
  ADD a b TO c GIVING tmp.
  COMPUTE c = FUNCTION MAX(a, b, c).
  SUBTRACT tmp FROM c.
  MOVE c TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

