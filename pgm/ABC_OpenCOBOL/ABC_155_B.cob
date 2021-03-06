IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A            PIC 9(4) VALUE 1.
01 N            PIC 9(3).
01 cur          PIC 9(10) VALUE 1.
01 flg          PIC 9(1) VALUE 1.
01 i            PIC 9(18) VALUE 1.
01 j            PIC 9(18).
01 len          PIC 9(10).
01 ln           PIC X(500).

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT ln.
  PERFORM N TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO A
    IF FUNCTION MOD(A 2) = ZERO
    AND FUNCTION MOD(A 3) NOT = ZERO
    AND FUNCTION MOD(A 5) NOT = ZERO
      MOVE ZERO TO flg
      EXIT PERFORM
    END-IF
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  IF flg = 1
    DISPLAY "APPROVED"
  ELSE
    DISPLAY "DENIED"
  END-IF.
  STOP RUN.

