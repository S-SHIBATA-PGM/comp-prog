IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(10).
01 X          PIC 9(10).
01 ln         PIC X(30).
01 q          PIC 9(10).
01 r          PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO N X.
  DIVIDE X BY N GIVING q REMAINDER r.
  IF r = 0
    DISPLAY FUNCTION CHAR(FUNCTION ORD("A") + q - 1)
  ELSE
    DISPLAY FUNCTION CHAR(FUNCTION ORD("A") + q).
  STOP RUN.

