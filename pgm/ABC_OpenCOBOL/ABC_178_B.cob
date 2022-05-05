IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 a          PIC S9(10).
01 ans        PIC S9(20).
01 b          PIC S9(10).
01 c          PIC S9(10).
01 d          PIC S9(10).
01 ln         PIC X(50).
01 zs         PIC -(19)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO a b c d.
  IF a * c < a * d THEN
    COMPUTE ans = a * d
  ELSE
    COMPUTE ans = a * c
  END-IF.
  IF ans < b * c THEN
    COMPUTE ans = b * c
  END-IF.
  IF ans < b * d THEN
    COMPUTE ans = b * d
  END-IF.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

