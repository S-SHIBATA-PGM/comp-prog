IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(2).
01 B          PIC 9(2).
01 ans        PIC X(2).
01 ln         PIC X(5).
01 zs         PIC Z(2)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO A B.
  ADD B TO A.
  IF 24 <= A THEN
    SUBTRACT 24 FROM A
  END-IF.
  MOVE A TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

