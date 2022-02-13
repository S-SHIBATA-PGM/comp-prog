IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(400).
01 ans        PIC 9(10).
01 zs         PIC Z(9)9.
01 A          PIC 9(10).
01 B          PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO A B.
  IF A = B
    COMPUTE ans = 2 * A
  ELSE
    COMPUTE ans = 2 * FUNCTION MAX(A B) - 1
  END-IF.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
