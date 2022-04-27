IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 a          PIC 9(10).
01 cnt        PIC 9(10) VALUE ZERO.
01 cur        PIC 9(10) VALUE 1 COMP.
01 d1         PIC 9(10).
01 d2         PIC 9(10).
01 flg        PIC 9(1).
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 ln         PIC X(400).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 r1         PIC 9(10).
01 r2         PIC 9(10).
01 n          PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT ln.
  MOVE N TO maxlen.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO a
    MOVE ZERO TO flg
    PERFORM UNTIL 1 = flg
      DIVIDE a BY 2 GIVING d1 REMAINDER r1
      DIVIDE a BY 3 GIVING d2 REMAINDER r2
      IF ZERO NOT = r1 AND 2 NOT = r2 THEN
        MOVE 1 TO flg
      ELSE
        SUBTRACT 1 FROM a
        ADD 1 TO cnt
      END-IF
    END-PERFORM
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  MOVE cnt TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

