IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A1.
   03 A       PIC X(10) OCCURS 10 DEPENDING N.
01 N          PIC 9(10).
01 cur        PIC X(10).
01 curx       PIC 9(10).
01 cury       PIC 9(10).
01 i          PIC 9(10) COMP.
01 idx        PIC 9(10) COMP.
01 j          PIC 9(10) COMP.
01 k          PIC 9(10) COMP.
01 x          PIC 9(10) COMP.
01 y          PIC 9(10) COMP.
01 mx         PIC X(10) VALUE SPACE.
01 xy1.
   03 xy      OCCURS 8.
      05 dx   PIC S9(1).
      05 dy   PIC S9(1).


PROCEDURE DIVISION.
  ACCEPT N.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    ACCEPT A(i)
  END-PERFORM.
  *> 下、右、上、左、右下、右上、左下、左上
  *> dy
  MOVE 1 TO dy(1).
  MOVE ZERO TO dy(2).
  MOVE -1 TO dy(3).
  MOVE ZERO TO dy(4).
  MOVE 1 TO dy(5).
  MOVE -1 TO dy(6).
  MOVE 1 TO dy(7).
  MOVE -1 TO dy(8).
  *> dx
  MOVE ZERO TO dx(1).
  MOVE 1 TO dx(2).
  MOVE ZERO TO dx(3).
  MOVE -1 TO dx(4).
  MOVE 1 TO dx(5).
  MOVE 1 TO dx(6).
  MOVE -1 TO dx(7).
  MOVE -1 TO dx(8).
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    PERFORM VARYING j FROM 1 BY 1 UNTIL N < j
      PERFORM VARYING idx FROM 1 BY 1 UNTIL 8 < idx
        MOVE i TO cury
        MOVE j TO curx
        PERFORM VARYING k FROM 1 BY 1 UNTIL N < k
          MOVE A(cury)(curx:1) TO cur(k:1)
          ADD dy(idx) TO cury
          ADD dx(idx) TO curx
          IF N < cury MOVE 1 TO cury END-IF
          IF N < curx MOVE 1 TO curx END-IF
          IF cury < 1 MOVE N TO cury END-IF
          IF curx < 1 MOVE N TO curx
        END-PERFORM
        IF mx < cur move cur TO mx
      END-PERFORM
    END-PERFORM
  END-PERFORM.
  DISPLAY FUNCTION TRIM(mx).
  STOP RUN.

