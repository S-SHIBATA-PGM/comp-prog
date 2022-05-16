IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 abc1.
   03 abc     PIC 9(10) OCCURS 3.
01 ans        PIC 9(10) VALUE ZERO.
01 ln         PIC X(30).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO abc(1) abc(2) abc(3).
  SORT abc ASCENDING abc.
  IF abc(1) = abc(2) AND abc(3)
    MOVE abc(1) TO ans
  END-IF.
  IF abc(1) = abc(2) AND abc(2) NOT = abc(3)
    MOVE abc(3) TO ans
  END-IF.
  IF abc(2) = abc(3) AND abc(3) NOT = abc(1)
    MOVE abc(1) TO ans
  END-IF.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

