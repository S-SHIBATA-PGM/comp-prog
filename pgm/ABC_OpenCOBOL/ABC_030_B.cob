IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 d1         PIC 9(10)V9(4).
01 d2         PIC 9(10)V9(4).
01 ln         PIC X(30).
01 m          PIC 9(10).
01 n          PIC 9(10).
01 nr         PIC 9(10).
01 zs         PIC Z(9)9.9(4).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO n m.
  DIVIDE n BY 12 GIVING n REMAINDER nr.
  *> 360 / 12 + 30 / 60
  *> 360 / 60
  COMPUTE d1 = FUNCTION ABS(nr * 30 + m * 0.5 - m * 6).
  COMPUTE d2 = 360 - d1.
  MOVE FUNCTION MIN(d1 d2) TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

