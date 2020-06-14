IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(10).
01 qt         PIC 9(19).
01 dvd        PIC 9(10).
01 c          PIC 9(19).
01 c1         PIC 9(19).
01 c3         PIC 9(19).
01 c5         PIC 9(19).
01 c15        PIC 9(19).
01 accum      PIC 9(19).
01 zs         PIC Z(18)9.

PROCEDURE DIVISION.
  ACCEPT N.
  MOVE 1 TO dvd.
  PERFORM CALC.
  MOVE c TO c1.
  MOVE 3 TO dvd.
  PERFORM CALC.
  MOVE c TO c3.
  MOVE 5 TO dvd.
  PERFORM CALC.
  MOVE c TO c5.
  MOVE 15 TO dvd.
  PERFORM CALC.
  MOVE c TO c15.
  COMPUTE accum = c1 - c3 - c5 + c15.
  MOVE accum TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

CALC SECTION.
  DIVIDE N BY dvd GIVING qt.
  COMPUTE c = (dvd + (qt * dvd)) * qt / 2.
