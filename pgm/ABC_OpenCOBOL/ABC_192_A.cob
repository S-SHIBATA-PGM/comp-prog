IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 X         PIC 9(10).
01 ans       PIC Z(9)9.
01 d         PIC 9(10).
01 r         PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT X.
  DIVIDE X BY 100 GIVING d REMAINDER r.
  COMPUTE ans = 100 - r.
  DISPLAY FUNCTION TRIM(ans).
  STOP RUN.
