IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A1.
   03 A11 OCCURS 100.
      05 A    PIC 9(10).
01 ABK1.
   03 ABK11 OCCURS 3.
      05 ABK  PIC 9(10).
01 B1.
   03 B11 OCCURS 100.
      05 B    PIC 9(10).
01 cur        PIC 9(26) VALUE 1.
01 i          PIC 9(18) VALUE 1.
01 idx        PIC 9(10).
01 idx2       PIC 9(10).
01 j          PIC 9(18).
01 len        PIC 9(26).
01 ln         PIC X(26).
01 m          PIC 9(11).
01 maxlen     PIC 9(1) VALUE 3.
01 p          PIC 9(11).
01 tmp        PIC 9(10).
01 zs         PIC Z(11).

PROCEDURE DIVISION.
  ACCEPT ln.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO ABK(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  MOVE 1 TO idx.
  PERFORM VARYING m FROM ABK(1) BY 1 UNTIL ABK(1) + ABK(3) - 1 < m
  IF m <= ABK(2) THEN
    MOVE m TO A(idx)
    ADD 1 TO idx
  ELSE
    EXIT PERFORM
  END-IF
  END-PERFORM.
  MOVE 1 TO idx2.
  SUBTRACT 1 FROM idx GIVING tmp.
  PERFORM VARYING p FROM ABK(2) BY -1 UNTIL p < ABK(2) - ABK(3) + 1
    IF A(tmp) < p THEN
      MOVE p TO B(idx2)
      ADD 1 TO idx2
    ELSE
      EXIT PERFORM
    END-IF
  END-PERFORM.
  SUBTRACT 1 FROM idx.
  PERFORM VARYING m FROM 1 BY 1 UNTIL idx < m
    MOVE A(m) TO zs
    DISPLAY FUNCTION TRIM(zs)
  END-PERFORM.
  SUBTRACT 1 FROM idx2.
  PERFORM VARYING p FROM idx2 BY -1 UNTIL p < 1
    MOVE B(p) TO zs
    DISPLAY FUNCTION TRIM(zs)
  END-PERFORM.
  STOP RUN.

