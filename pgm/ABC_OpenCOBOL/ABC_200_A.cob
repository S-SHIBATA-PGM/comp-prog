IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N         PIC 9(10).
01 ans       PIC Z(9)9.
01 d         PIC 9(10).
01 r         PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT N.
  DIVIDE N BY 100 GIVING d REMAINDER r.
  IF ZERO < r ADD 1 TO d GIVING ans ELSE MOVE d TO ans.
  DISPLAY FUNCTION TRIM(ans).
  STOP RUN.

