IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(5).
01 N          PIC 9(5).
01 zs         PIC Z(6)9.

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT A.
  COMPUTE N = N ** 2.
  SUBTRACT A FROM N.
  MOVE N TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

