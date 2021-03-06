IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(3).
01 B          PIC 9(3).
01 C          PIC 9(3).
01 D          PIC 9(3).
01 ln         PIC X(15).
01 mn         PIC 9(3).
01 mx         PIC 9(3).
01 zs         PIC Z(3)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO A B C D.
  COMPUTE mx = FUNCTION MAX(A, C).
  COMPUTE mn = FUNCTION MIN(B, D).
  IF mx < mn THEN
    SUBTRACT mx FROM mn
  ELSE
    MOVE ZERO to MN
  END-IF.
  MOVE mn TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

