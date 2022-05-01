IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(10).
01 ans        PIC X(7).
01 c1.
   03 c11     OCCURS 4.
      05 c    PIC X(1) OCCURS 4.
01 cur        PIC 9(10) COMP.
01 i          PIC 9(10) COMP.
01 j          PIC 9(10) COMP.
01 k          PIC 9(10) COMP.
01 l          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 ln         PIC X(400).
01 x1         PIC X(1).
01 x2         PIC X(1).
01 x3         PIC X(1).
01 x4         PIC X(1).
01 y1         PIC X(1).
01 y2         PIC X(1).
01 y3         PIC X(1).
01 y4         PIC X(1).

PROCEDURE DIVISION.
  PERFORM VARYING l FROM 1 BY 1 UNTIL 4 < l
    ACCEPT ln
    MOVE 1 TO cur
    MOVE 1 TO i
    PERFORM VARYING k FROM 1 BY 1 UNTIL 4 < k
      PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
      END-PERFORM
      COMPUTE len = j - cur
      MOVE ln(cur:len) TO c(l k)
      COMPUTE cur = j + 1
      ADD 1 TO i
    END-PERFORM
  END-PERFORM.
  PERFORM VARYING i FROM 1 BY 1 UNTIL 2 < i
    MOVE c(i 1) TO x1
    MOVE c(i 2) TO x2
    MOVE c(i 3) TO x3
    MOVE c(i 4) TO x4
    MOVE c(4 - i + 1 1) TO y1
    MOVE c(4 - i + 1 2) TO y2
    MOVE c(4 - i + 1 3) TO y3
    MOVE c(4 - i + 1 4) TO y4
    MOVE x4 TO c(4 - i + 1 1)
    MOVE x3 TO c(4 - i + 1 2)
    MOVE x2 TO c(4 - i + 1 3)
    MOVE x1 TO c(4 - i + 1 4)
    MOVE y4 TO c(i 1)
    MOVE y3 TO c(i 2)
    MOVE y2 TO c(i 3)
    MOVE y1 TO c(i 4)
  END-PERFORM.
  PERFORM VARYING i FROM 1 BY 1 UNTIL 4 < i
    STRING
      c(i 1)
      SPACE
      c(i 2)
      SPACE
      c(i 3)
      SPACE
      c(i 4)
      INTO ans
    END-STRING
    DISPLAY ans
  END-PERFORM.
  STOP RUN.

