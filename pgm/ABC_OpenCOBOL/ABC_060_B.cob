IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(3).
01 B          PIC 9(3).
01 C          PIC 9(2).
01 flg        PIC 9(1) VALUE 0.
01 i          PIC 9(5).
01 ln         PIC X(10).
01 num        PIC 9(5).
01 pi         PIC 9(5).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO A B C.
  MOVE A TO num.
  PERFORM VARYING i FROM 1 BY 1 UNTIL A * B < num
    IF FUNCTION MOD(num, B) = C THEN
      MOVE 1 TO flg
      EXIT PERFORM
    ELSE
      ADD 1 TO i GIVING pi
      MULTIPLY pi BY A GIVING num
    END-IF
  END-PERFORM.
  IF flg = 1 THEN
    DISPLAY "YES"
  ELSE
    DISPLAY "NO"
  END-IF.
  STOP RUN.

