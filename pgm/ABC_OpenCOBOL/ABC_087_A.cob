IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(4).
01 B          PIC 9(4).
01 D          PIC 9(3).
01 R          PIC 9(3).
01 X          PIC 9(5).
01 zs         PIC Z(3)9.

PROCEDURE DIVISION.
  ACCEPT X.
  ACCEPT A.
  ACCEPT B.
  SUBTRACT A FROM X.
  DIVIDE B INTO X GIVING D REMAINDER R.
  MOVE R TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

