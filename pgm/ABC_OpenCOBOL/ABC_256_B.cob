IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 N          PIC 9(10).
01 P          PIC 9(10) VALUE ZERO.
01 cur        PIC 9(10).
01 i          PIC 9(10) COMP.
01 j          PIC 9(10) COMP.
01 ln         PIC X(500).
01 pt         PIC S9(10) VALUE 1.
01 squares1.
   03 squares PIC 9(10) OCCURS 4.
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT ln.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    UNSTRING ln DELIMITED SPACE INTO A POINTER pt
    MOVE 1 TO squares(1)
    PERFORM VARYING j FROM 4 BY -1 UNTIL j < 1
      ADD A TO j GIVING cur
      IF 1 = squares(j)
        IF 4 < cur
          MOVE ZERO TO squares(j)
          ADD 1 TO P
        ELSE
          MOVE ZERO TO squares(j)
          MOVE 1 TO squares(cur)
    END-PERFORM
  END-PERFORM.
  MOVE P TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

