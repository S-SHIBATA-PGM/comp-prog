IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(10).
01 q          PIC 9(10).
01 ans        PIC 9(1)V9(10).

PROCEDURE DIVISION.
  ACCEPT N.
  COMPUTE q = (N + 1) / 2.
  COMPUTE ans = q / N.
  DISPLAY ans.
  STOP RUN.
