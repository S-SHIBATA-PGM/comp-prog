IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(400).
01 ans        PIC 9(10).
01 zs         PIC Z(9)9.
01 A          PIC 9(10).
01 B          PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO A B.
  IF 13 <= A
    MOVE B TO ans
  ELSE
    IF 6 <= A
      COMPUTE ans = B / 2
    ELSE
      MOVE ZERO TO ans
    END-IF
  END-IF.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
