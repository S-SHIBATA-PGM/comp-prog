IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(10).
01 T          PIC X(10).
01 atcoder    PIC X(7) VALUE "atcoder".
01 cur        PIC X(1).
01 flg        PIC 9(1) VALUE 1.
01 i          PIC 9(10) COMP.
01 num        PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT S.
  ACCEPT T.
  PERFORM VARYING i FROM 1 BY 1
  UNTIL FUNCTION STORED-CHAR-LENGTH(S) < i
    MOVE SPACE TO cur
    IF "@" = S(i:1) AND "@" NOT = T(i:1) THEN
      MOVE T(i:1) TO cur
    ELSE
      IF "@" NOT = S(i:1) AND "@" = T(i:1) THEN
        MOVE S(i:1) TO cur
      ELSE
        IF "@" NOT = S(i:1) AND "@" NOT = T(i:1)
        AND S(i:1) NOT = T(i:1) THEN
          MOVE ZERO TO flg
          EXIT PERFORM
        END-IF
      END-IF
    END-IF
    IF SPACE NOT = cur THEN
      MOVE ZERO TO num
      INSPECT atcoder TALLYING num FOR ALL cur
      IF ZERO = num THEN
        MOVE ZERO TO flg
        EXIT PERFORM
      END-IF
    END-IF
  END-PERFORM.
  IF ZERO = flg THEN
    DISPLAY "You will lose"
  ELSE
    DISPLAY "You can win"
  END-IF.
  STOP RUN.

