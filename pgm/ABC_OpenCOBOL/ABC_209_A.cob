IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 B          PIC 9(10).
01 ans        PIC Z(9)9.
01 ln         PIC X(30).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO A B.
  IF B < A MOVE ZERO TO ans ELSE COMPUTE ans = B - A + 1.
  DISPLAY FUNCTION TRIM(ans).
  STOP RUN.

