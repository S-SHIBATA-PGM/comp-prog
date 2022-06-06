IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 i          PIC 9(10) COMP.
01 ln         PIC X(30).
01 point1.
   03 point   OCCURS 3.
      05 x    PIC S9(10).
      05 y    PIC S9(10).
01 zsx        PIC -(9)9.
01 zsy        PIC -(9)9.

PROCEDURE DIVISION.
  PERFORM VARYING i FROM 1 BY 1 UNTIL 3 < i
    ACCEPT ln
    UNSTRING ln DELIMITED SPACE INTO x(i) y(i)
  END-PERFORM.
  MOVE x(1) TO zsx.
  MOVE y(1) TO zsy.
  IF x(1) = x(3) MOVE x(2) TO zsx
  ELSE IF x(1) = x(2) MOVE x(3) TO zsx.
  IF y(1) = y(3) MOVE y(2) TO zsy
  ELSE IF y(1) = y(2) MOVE y(3) TO zsy.
  DISPLAY FUNCTION TRIM(zsx) SPACE FUNCTION TRIM(zsy).
  STOP RUN.

