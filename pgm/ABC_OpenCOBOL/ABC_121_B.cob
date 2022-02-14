IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(400).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 maxlenm    PIC 9(10) VALUE 100 COMP.
01 cur        PIC 9(10) VALUE 1 COMP.
01 curm       PIC 9(10) VALUE 1 COMP.
01 curx       PIC 9(10) VALUE 1 COMP.
01 cury       PIC 9(10) VALUE 1 COMP.
01 d          PIC 9(10).
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 k          PIC 9(10) VALUE 1 COMP.
01 l          PIC 9(10) COMP.
01 ax         PIC 9(10) VALUE ZERO COMP.
01 ay         PIC 9(10) VALUE ZERO COMP.
01 x          PIC 9(10) VALUE 1 COMP.
01 y          PIC 9(10) VALUE 1 COMP.
01 len        PIC 9(10) COMP.
01 num        PIC S9(10).
01 ans        PIC 9(10).
01 zs         PIC Z(9)9.
01 C          PIC S9(10).
01 M          PIC 9(10).
01 N          PIC 9(10).
01 A1.
   03 A11 OCCURS 20.
      05 A1111 OCCURS 20.
         07 A    PIC S9(10).
01 B1.
   03 B11 OCCURS 20 DEPENDING ON M.
      05 B    PIC S9(10).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO N M C.

  ACCEPT ln.
  MOVE M TO maxlen.

  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    IF ln(cur:1) NOT = "-"
        MOVE ln(cur:len) TO B(i)
    ELSE
        ADD 1 TO cur
        SUBTRACT 1 FROM len
        MOVE ln(cur:len) TO B(i)
        COMPUTE B(i) = -B(i)
    END-IF
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.

  PERFORM N TIMES
    ACCEPT ln
    MOVE 1 TO curm
    ADD 1 TO ax
    MOVE ZERO TO ay
    PERFORM M TIMES
      ADD 1 TO ay
      PERFORM VARYING l FROM curm BY 1 UNTIL ln(l:1) = SPACE
      END-PERFORM
      COMPUTE len = l - curm
      IF ln(curm:1) NOT = "-"
          MOVE ln(curm:len) TO A(ax ay)
      ELSE
          ADD 1 TO curm
          SUBTRACT 1 FROM len
          MOVE ln(curm:len) TO A(ax ay)
          COMPUTE A(ax ay) = -A(ax ay)
      END-IF
      COMPUTE curm = l + 1
      ADD 1 TO k
    END-PERFORM
  END-PERFORM.

  PERFORM VARYING x FROM curx BY 1 UNTIL N < x
    MOVE ZERO TO num
    PERFORM VARYING y FROM cury BY 1 UNTIL M < y
      COMPUTE num = num + A(x y) * B(y)
    END-PERFORM
    IF ZERO < num + C
      ADD 1 TO ans
    END-IF
  END-PERFORM.

  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
