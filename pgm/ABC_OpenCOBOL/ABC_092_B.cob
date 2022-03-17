IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A1.
   03 A11 OCCURS 100.
      05 A    PIC 9(3).
01 DX1.
   03 DX11 OCCURS 2.
      05 DX   PIC 9(3).
01 N          PIC 9(3).
01 R          PIC 9(3).
01 X          PIC 9(3).
01 cur        PIC 9(8) VALUE 1.
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 k          PIC 9(3).
01 len        PIC 9(8).
01 ln         PIC X(8).
01 maxlen     PIC 9(1) VALUE 2.
01 p          PIC 9(3).
01 q          PIC 9(3).
01 sm         PIC 9(5).
01 zs         PIC Z(6).

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT ln.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO DX(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  PERFORM VARYING k FROM 1 BY 1 UNTIL N < k
    ACCEPT A(k)
  END-PERFORM.
  MOVE 0 TO sm.
  PERFORM VARYING p FROM 0 BY 1 UNTIL DX(1) < p + 1
    PERFORM VARYING q FROM 1 BY 1 UNTIL N < q
      IF p = 0 THEN
        ADD 1 TO sm
      ELSE
        DIVIDE A(q) INTO p GIVING X REMAINDER R
        IF R = 0 THEN
          ADD 1 TO sm
        END-IF
      END-IF
    END-PERFORM
  END-PERFORM.
  ADD DX(2) TO sm.
  MOVE sm TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

