IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(10).
01 T          PIC 9(10).
01 X          PIC 9(10).
01 ans        PIC 9(10).
01 d          PIC 9(10).
01 ln         PIC X(30).
01 r          PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO N X T.
  DIVIDE N BY X GIVING d REMAINDER r.
  IF ZERO < r THEN
    COMPUTE ans = (d + 1) * T
  ELSE
    MULTIPLY d BY T GIVING ans
  END-IF.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
