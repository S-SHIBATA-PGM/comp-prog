IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD SYSIN.
01 INDATA     PIC X(20000).

WORKING-STORAGE SECTION.
01 ln         PIC X(20000).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 cur        PIC 9(10) VALUE 1 COMP.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 eat        PIC 9(10).
01 num        PIC 9(10).
01 conflg     PIC 9(1).
01 extflg     PIC 9(1).
01 ans        PIC 9(10).
01 zs         PIC Z(9)9.
01 N          PIC 9(10).
01 M          PIC 9(10).
01 A1.
   03 A11 OCCURS 1000 DEPENDING N INDEXED aix.
      05 A    PIC 9(10).
      05 C    PIC 9(10) VALUE ZERO.
01 B1.
   03 B11 OCCURS 1000 DEPENDING M.
      05 B    PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO N M.
  OPEN INPUT SYSIN.

  READ SYSIN INTO ln.
  MOVE N TO maxlen.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO A(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.

  READ SYSIN INTO ln.
  MOVE M TO maxlen.
  MOVE 1 TO cur.
  MOVE 1 TO i.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO B(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.


  PERFORM VARYING i FROM 1 BY 1 UNTIL M < i
    SET aix TO 1
    PERFORM UNTIL N < aix
      MOVE ZERO TO conflg
      MOVE ZERO TO extflg
      SEARCH A11
        WHEN A(aix) = B(i)
          IF 1 = C(aix)
            MOVE 1 TO conflg
            MOVE ZERO TO extflg
          ELSE
            MOVE ZERO TO conflg
            MOVE 1 TO extflg
            MOVE 1 TO C(aix)
          END-IF
          SET aix UP BY 1
      END-SEARCH
      IF ZERO = conflg
        EXIT PERFORM
      END-IF
    END-PERFORM
    IF ZERO = extflg
      EXIT PERFORM
    END-IF
  END-PERFORM.

  IF 1 = extflg and i = M + 1
    DISPLAY "Yes"
  ELSE
    DISPLAY "No"
  END-IF.
  STOP RUN.
