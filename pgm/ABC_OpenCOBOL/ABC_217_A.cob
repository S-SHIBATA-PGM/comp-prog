IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(10).
01 T          PIC X(10).
01 ln         PIC X(30).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO S T.
  IF S < T DISPLAY "Yes" ELSE DISPLAY "No".
  STOP RUN.

