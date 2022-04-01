IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(26).
01 alpha      PIC X(26) VALUE "abcdefghijklmnopqrstuvwxyz".
01 flg1.
   03 flg11 OCCURS 26.
      05 flg  PIC 9(1) VALUE ZERO.
01 i          PIC 9(2).
01 j          PIC 9(2).
01 ln         PIC X(30).
01 len        PIC 9(2).
01 num        PIC 9(2) VALUE 26.
01 used       PIC 9(1) VALUE 0.

PROCEDURE DIVISION.
  ACCEPT S.
  COMPUTE len = FUNCTION STORED-CHAR-LENGTH(S).
  PERFORM VARYING i FROM 1 BY 1 UNTIL len < i
    PERFORM VARYING j FROM 1 BY 1 UNTIL num < j
      IF S(i:1) = alpha(j:1) THEN
        IF flg(j) = 1 THEN
          MOVE 1 TO used
          EXIT PERFORM
        END-IF
        MOVE 1 TO flg(j)
      END-IF
    END-PERFORM
    IF used = 1 THEN
      EXIT PERFORM
    END-IF
  END-PERFORM.
  IF used = 1 THEN
    DISPLAY "no"
  ELSE
    DISPLAY "yes"
  END-IF.
  STOP RUN.

