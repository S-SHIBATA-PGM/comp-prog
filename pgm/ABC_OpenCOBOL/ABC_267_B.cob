IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(30).
01 clm1.
   03 clm     PIC X(1) OCCURS 7.
01 flg        PIC 9(1) VALUE ZERO.
01 i          PIC 9(10) COMP.
01 j          PIC 9(10) COMP.
01 k          PIC 9(10) COMP.
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT S.
  MOVE S(7:1) TO clm(1).
  MOVE S(4:1) TO clm(2).
  MOVE FUNCTION MAX(S(2:1) S(8:1)) TO clm(3)
  MOVE FUNCTION MAX(S(1:1) S(5:1)) TO clm(4)
  MOVE FUNCTION MAX(S(3:1) S(9:1)) TO clm(5)
  MOVE S(6:1) TO clm(6).
  MOVE S(10:1) TO clm(7).
  IF "1" = S(1:1) DISPLAY "No" STOP RUN END-IF.
  PERFORM VARYING i FROM 1 BY 1 UNTIL 7 < i
    ADD 1 TO i GIVING j
    PERFORM VARYING j FROM j BY 1 UNTIL 7 < j
      IF "1" = clm(i) AND "1" = clm(j)
        ADD 1 TO i GIVING k
        PERFORM VARYING k FROM k BY 1 UNTIL j - 1 < k
          IF ZERO = clm(k) MOVE 1 TO flg EXIT PERFORM END-IF
        END-PERFORM
        IF 1 = flg EXIT PERFORM END-IF
      END-IF
    END-PERFORM
    IF 1 = flg EXIT PERFORM END-IF
  END-PERFORM.
  IF 1 = flg DISPLAY "Yes" ELSE DISPLAY "No".
  STOP RUN.

