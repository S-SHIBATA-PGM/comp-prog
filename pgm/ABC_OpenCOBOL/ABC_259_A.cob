IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 D          PIC 9(10).
01 M          PIC 9(10).
01 N          PIC 9(10).
01 T          PIC 9(10).
01 X          PIC 9(10).
01 ln         PIC X(30).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO N M X T D.
  IF X <= M MOVE T TO zs ELSE COMPUTE zs = T - D * (X - M).
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
