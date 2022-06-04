IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(100).
01 T          PIC X(100).
01 cnt        PIC 9(10) VALUE ZERO.
01 flg        PIC 9(10) VALUE ZERO.
01 i          PIC 9(10) COMP.
01 len        PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT S.
  ACCEPT T.
  MOVE FUNCTION STORED-CHAR-LENGTH(S) TO len.
  PERFORM VARYING i FROM 1 BY 1 UNTIL len < i
    IF S(i:1) NOT = T(i:1)
      IF ZERO < cnt MOVE 1 TO flg EXIT PERFORM
      ELSE IF ZERO = flg AND len = i MOVE 1 TO flg EXIT PERFORM
      ELSE IF ZERO = flg AND S(i:1) = T(i + 1:1)
      AND S(i + 1:1) = T(i:1) MOVE 1 TO flg
      ELSE IF 1 = flg MOVE ZERO TO flg ADD 1 TO cnt
      ELSE MOVE 1 TO flg EXIT PERFORM
  END-PERFORM.
  IF ZERO = flg DISPLAY "Yes" ELSE DISPLAY "No".
  STOP RUN.
