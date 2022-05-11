IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S         PIC X(1000).
01 ans       PIC Z(9)9.
01 d         PIC 9(10).
01 i         PIC 9(10) COMP.
01 len       PIC 9(10).
01 r         PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT S.
  MOVE FUNCTION STORED-CHAR-LENGTH(S) TO len.
  PERFORM VARYING i FROM 1 BY 1 UNTIL len < i
    DIVIDE i BY 2 GIVING d REMAINDER r
    IF 1 = r AND (S(i:1) < "a" OR "z" < S(i:1)) THEN
      EXIT PERFORM
    END-IF
    IF ZERO = r AND (S(i:1) < "A" OR "Z" < S(i:1)) THEN
      EXIT PERFORM
    END-IF
  END-PERFORM.
  IF len < i THEN
    DISPLAY "Yes"
  ELSE
    DISPLAY "No"
  END-IF.
  STOP RUN.

