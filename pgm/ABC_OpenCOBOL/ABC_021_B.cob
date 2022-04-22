IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 K          PIC 9(10).
01 N          PIC 9(10).
01 P1.
   03 P       PIC 9(1) VALUE ZERO OCCURS 100.
01 a          PIC 9(10).
01 b          PIC 9(10).
01 cur        PIC 9(10) VALUE 1.
01 flg        PIC 9(1) VALUE ZERO.
01 i          PIC 9(10).
01 j          PIC 9(10).
01 len        PIC 9(3).
01 ln         PIC X(400).
01 num        PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO a b.
  MOVE 1 TO P(a).
  MOVE 1 TO P(b).
  ACCEPT K.
  ACCEPT ln.
  PERFORM VARYING i FROM 1 BY 1 UNTIL K < i
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO num
    IF 1 = P(num) THEN
      MOVE 1 TO flg
      EXIT PERFORM
    END-IF
    MOVE 1 TO P(num)
    COMPUTE cur = j + 1
  END-PERFORM.
  IF ZERO = flg THEN
    DISPLAY "YES"
  ELSE
    DISPLAY "NO"
  END-IF.
  STOP RUN.

