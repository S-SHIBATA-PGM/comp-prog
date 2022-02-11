IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(30).
01 i          PIC 9(10).
01 flg        PIC 9(10) VALUE ZERO.

PROCEDURE DIVISION.
  ACCEPT S.
  PERFORM VARYING i FROM 2 BY 1 UNTIL FUNCTION STORED-CHAR-LENGTH(S) < i
    IF S(i - 1:1) = S(i:1)
      MOVE 1 TO flg
      EXIT PERFORM
    END-IF
  END-PERFORM.
  IF ZERO <> flg
    DISPLAY "Bad"
  ELSE
    DISPLAY "Good"
  END-IF.
  STOP RUN.