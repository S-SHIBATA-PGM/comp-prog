IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 a          PIC X(100).
01 c          PIC X(100).
01 ln         PIC X(302).
01 x          PIC X(100).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO a x c.
  DISPLAY a(1:1) x(1:1) c(1:1)
  STOP RUN.

