IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(100000).
01 alpha      PIC X(26) VALUE "abcdefghijklmnopqrstuvwxyz".
01 f1.
   03 f11 OCCURS 26.
      05 f    PIC 9(1) VALUE ZERO.
01 i          PIC 9(6).
01 j          PIC 9(6).
01 maxlen     PIC 9(2) VALUE 26.

PROCEDURE DIVISION.
  ACCEPT S.
  PERFORM VARYING i FROM 1 BY 1 UNTIL S(i:1) = SPACE
    PERFORM VARYING j FROM 1 BY 1 UNTIL maxlen < j
      IF S(i:1) = alpha(j:1) THEN
        MOVE 1 TO f(j)
      END-IF
    END-PERFORM
  END-PERFORM
  PERFORM VARYING i FROM 1 BY 1 UNTIL maxlen < i
    IF f(i) = ZERO THEN
      DISPLAY alpha(i:1)
      EXIT PERFORM
    ELSE
      IF i = maxlen THEN
        DISPLAY "None"
      END-IF
    END-IF
  END-PERFORM
  STOP RUN.

