IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(400).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 maxlenm    PIC 9(10) VALUE 100 COMP.
01 cur        PIC 9(10) VALUE 1 COMP.
01 curm       PIC 9(10) VALUE 1 COMP.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 k          PIC 9(10) VALUE 1 COMP.
01 l          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 N          PIC 9(10).
01 M          PIC 9(10).
01 X          PIC S9(10).
01 Y          PIC S9(10).
01 A1.
   03 A11 OCCURS 101 DEPENDING ON N.
      05 A    PIC S9(10) VALUE -1000000007.
01 B1.
   03 B11 OCCURS 101 DEPENDING ON M.
      05 B    PIC S9(10) VALUE 1000000007.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO N M X Y.

  ACCEPT ln
  MOVE N TO maxlen.

  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    IF ln(cur:1) NOT = "-"
        MOVE ln(cur:len) TO A(i)
    ELSE
        ADD 1 TO cur
        SUBTRACT 1 FROM len
        MOVE ln(cur:len) TO A(i)
        COMPUTE A(i) = -A(i)
    END-IF
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.

  ADD 1 TO N.
  MOVE X TO A(i).
  SORT A11 DESCENDING A.

  ACCEPT ln
  MOVE M TO maxlen.

  PERFORM maxlen TIMES
    PERFORM VARYING l FROM curm BY 1 UNTIL ln(l:1) = SPACE
    END-PERFORM
    COMPUTE len = l - curm
    IF ln(curm:1) NOT = "-"
        MOVE ln(curm:len) TO B(k)
    ELSE
        ADD 1 TO curm
        SUBTRACT 1 FROM len
        MOVE ln(curm:len) TO B(k)
        COMPUTE B(k) = -B(k)
    END-IF
    COMPUTE curm = l + 1
    ADD 1 TO k
  END-PERFORM.

  ADD 1 TO M.
  MOVE Y TO B(k).
  SORT B11 ASCENDING B.

  IF A(1) < B(1)
    DISPLAY "No War"
  ELSE
    DISPLAY "War"
  END-IF.

  STOP RUN.
