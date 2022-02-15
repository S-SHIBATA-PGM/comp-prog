IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(400).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 cur        PIC 9(10).
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 p          PIC 9(10) COMP.
01 q          PIC 9(10) COMP.
01 y          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 num        PIC 9(10).
01 numa       PIC 9(10) VALUE ZERO.
01 ans        PIC 9(10).
01 zs         PIC Z(9)9.
01 N          PIC 9(10).
01 M          PIC 9(10).
01 K1.
   03 K11 OCCURS 100 DEPENDING ON N INDEXED BY XK.
      05 K    PIC 9(10).
01 A1.
   03 A11 OCCURS 900 INDEXED BY XA.
      05 A    PIC 9(10) VALUE ZERO.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO N M.
  SET XA TO 1.
  SET XK TO 1.
  PERFORM VARYING y from 1 BY 1 UNTIL N < y
    ACCEPT ln
    MOVE 1 TO cur
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO K(XK)
    COMPUTE cur = j + 1
    MOVE K(XK) TO maxlen
    ADD 1 TO XK
    PERFORM maxlen TIMES
      PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
      END-PERFORM
      COMPUTE len = j - cur
      MOVE ln(cur:len) TO A(XA)
      COMPUTE cur = j + 1
      ADD 1 TO XA
      ADD 1 TO i
      ADD 1 TO numa
    END-PERFORM
  END-PERFORM.
  MOVE ZERO TO ans.
  PERFORM VARYING p from 1 BY 1 UNTIL M < p
    MOVE ZERO TO num
    PERFORM VARYING q from 1 BY 1 UNTIL numa < q
        IF p = A(q)
          ADD 1 TO num
        END-IF
    END-PERFORM
    IF N = num
      ADD 1 TO ans
    END-IF
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
