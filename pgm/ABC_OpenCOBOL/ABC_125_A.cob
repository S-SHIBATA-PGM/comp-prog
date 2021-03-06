IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(400).
01 ans        PIC 9(10).
01 zs         PIC Z(9)9.
01 A          PIC 9(10).
01 B          PIC 9(10).
01 T          PIC 9(10).
01 TA         PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO A B T.
  DIVIDE T BY A GIVING TA.
  COMPUTE ans = TA * B.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
