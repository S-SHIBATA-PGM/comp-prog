IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(30).
01 cnt        PIC 9(1).
01 chr.
   03 num USAGE BINARY-CHAR.
01 flg        PIC 9(1).
01 i          PIC 9(2).
01 idx        PIC 9(2).
01 len        PIC 9(2).

PROCEDURE DIVISION.
  ACCEPT S.
  COMPUTE len = FUNCTION STORED-CHAR-LENGTH(S).
  IF S(1:1) = 'A' THEN
    MOVE 0 TO cnt
    MOVE 99 TO idx
    PERFORM VARYING i FROM 3 BY 1 UNTIL len - 1 < i
      IF S(i:1) = 'C' THEN
        ADD 1 TO cnt
        MOVE i TO idx
      END-IF
    END-PERFORM
    IF cnt = 1 THEN
      PERFORM VARYING i FROM 2 BY 1 UNTIL len < i
        IF i NOT = idx THEN
          MOVE S(i:1) TO chr
          IF S(i:1) < 'a' OR 'z' < S(i:1) THEN
            MOVE 1 TO flg
          END-IF
        END-IF
      END-PERFORM
      IF flg = 1 THEN
        DISPLAY "WA"
      ELSE
        DISPLAY "AC"
      END-IF
    ELSE
      DISPLAY "WA"
    END-IF
  ELSE
    DISPLAY "WA"
  END-IF
  STOP RUN.

