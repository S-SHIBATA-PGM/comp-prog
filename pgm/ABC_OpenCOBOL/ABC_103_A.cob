IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A1.
   03 A11 OCCURS 3.
      05 A    PIC 9(3).
01 ans        PIC X(3).
01 cur        PIC 9(12) VALUE 1.
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 len        PIC 9(12).
01 ln         PIC X(30).
01 maxlen     PIC 9(1) VALUE 3.
01 sm         PIC 9(4).
01 tmp        PIC 9(3).
01 zs         PIC Z(4)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO A(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  PERFORM VARYING i FROM 1 BY 1 UNTIL 3 < i
    ADD 1 TO i GIVING j
    PERFORM UNTIL 3 < j
      IF A(j) < A(i) THEN
        MOVE A(i) TO tmp
        MOVE A(j) TO A(i)
        MOVE tmp TO A(j)
      END-IF
      ADD 1 TO j
    END-PERFORM
  END-PERFORM.
  MOVE ZERO TO sm.
  SUBTRACT A(1) FROM A(2) GIVING tmp.
  ADD tmp TO sm.
  SUBTRACT A(3) FROM A(2) GIVING tmp.
  ADD tmp TO sm.
  MOVE sm TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

