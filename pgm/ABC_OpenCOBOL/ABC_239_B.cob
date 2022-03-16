IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 D          PIC S9(20).
01 R          PIC 9(10).
01 X          PIC S9(20).
01 zs         PIC -(19)9.

PROCEDURE DIVISION.
  ACCEPT X.
  DIVIDE X BY 10 GIVING D REMAINDER R.
  IF X < ZERO
    IF ZERO NOT = R
      SUBTRACT 1 FROM D
    END-IF
  END-IF.
  MOVE D TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.