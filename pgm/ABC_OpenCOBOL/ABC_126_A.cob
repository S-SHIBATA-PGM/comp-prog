IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(400).
01 N          PIC 9(10).
01 K          PIC 9(10).
01 S          PIC X(50).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO N K.
  ACCEPT S.
  MOVE FUNCTION LOWER-CASE(S(K:1)) TO S(K:1).
  DISPLAY S.
  STOP RUN.
