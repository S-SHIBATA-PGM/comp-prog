IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(4).
01 B          PIC 9(4).
01 C          PIC 9(7).
01 ln         PIC X(17).
01 zs         PIC Z(7)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO A B C.
  COMPUTE A = FUNCTION MIN(A, B).
  DIVIDE A INTO C.
  MOVE C TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

