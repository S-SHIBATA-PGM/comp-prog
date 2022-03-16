IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 B          PIC 9(10).
01 ans        PIC X(30).
01 ln         PIC X(30).
01 tmp        PIC 9(5).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO A B.
  COMPUTE tmp = A * B - (A + B - 1).
  MOVE tmp TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
