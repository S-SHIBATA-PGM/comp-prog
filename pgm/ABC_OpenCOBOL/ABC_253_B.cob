IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 H          PIC 9(10).
01 S          PIC X(100).
01 W          PIC 9(10).
01 i          PIC 9(10).
01 idx        PIC 9(10) VALUE 1.
01 j          PIC 9(10).
01 ln         PIC X(30).
01 points1.
   03 points OCCURS 2.
      05 x    PIC 9(10).
      05 y    PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO H W.
  PERFORM VARYING i FROM 1 BY 1 UNTIL H < i
    ACCEPT S
    PERFORM VARYING j FROM 1 BY 1 UNTIL W < j
      IF S(j:1) = "o"
        MOVE i TO x(idx)
        MOVE j TO y(idx)
        ADD 1 TO idx
    END-PERFORM
  END-PERFORM.
  COMPUTE zs = FUNCTION ABS(x(1) - x(2))
  + FUNCTION ABS(y(1) - y(2)).
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

