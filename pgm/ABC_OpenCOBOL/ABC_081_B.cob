IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 D          PIC 9(10).
01 N          PIC 9(3).
01 R          PIC 9(1).
01 cnt        PIC 9(2).
01 cur        PIC 9(4) VALUE 1.
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 k          PIC 9(18).
01 len        PIC 9(4).
01 ln         PIC X(2200).
01 maxlen     PIC 9(3).
01 mn         PIC 9(2).
01 zs         PIC Z(2)9.

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT ln.
  MOVE N TO maxlen.
  MOVE 99 TO mn.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO A
    MOVE A TO D
    MOVE 0 TO R
    MOVE 0 TO cnt
    PERFORM UNTIL D = 0 OR R = 1
      DIVIDE 2 INTO D GIVING D REMAINDER R
      IF R = 0 THEN
        ADD 1 TO cnt
      END-IF
    END-PERFORM
    COMPUTE mn = FUNCTION MIN(mn, cnt)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  MOVE mn TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

