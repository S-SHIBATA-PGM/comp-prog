IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 B          PIC 9(10).
01 ans        PIC 9(10) VALUE ZERO COMP.
01 cur        PIC 9(10) VALUE 1 COMP.
01 ln         PIC X(30).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO A B.
  PERFORM UNTIL B <= cur
    ADD 1 TO ans
    COMPUTE cur = cur + A - 1
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

