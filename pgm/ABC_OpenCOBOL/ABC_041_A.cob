IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 s          PIC X(100).
01 i          PIC 9(3).

PROCEDURE DIVISION.
  ACCEPT s.
  ACCEPT i.
  DISPLAY s(i:1).
  STOP RUN.
