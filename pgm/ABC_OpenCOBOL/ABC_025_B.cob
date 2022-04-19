IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 B          PIC 9(10).
01 N          PIC 9(10).
01 ans        PIC S9(10) VALUE ZERO.
01 d          PIC S9(10).
01 dir        PIC X(4).
01 i          PIC 9(10) COMP.
01 ln         PIC X(30).
01 s          PIC X(4).
01 z          PIC X(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO N A B.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    ACCEPT ln
    UNSTRING ln DELIMITED BY SPACE INTO s d
    IF d < A THEN
      MOVE A TO d
    ELSE
      IF B < d THEN
        MOVE B TO d
      END-IF
    END-IF
    IF "West" = s THEN
      MULTIPLY d BY -1 GIVING d
    END-IF
    ADD d TO ans
  END-PERFORM.
  IF ans < ZERO THEN
    MOVE "West" TO dir
  ELSE
    MOVE "East" TO dir
  END-IF.
  IF ZERO = ans THEN
    DISPLAY ZERO
  ELSE
    MOVE ans TO zs
    STRING
      dir
      " "
      FUNCTION TRIM(zs)
      INTO z
    END-STRING
    DISPLAY FUNCTION TRIM(z)
  END-IF.
  STOP RUN.

