IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 B          PIC 9(10).
01 S          PIC X(12).
01 i          PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT S.
  PERFORM VARYING i FROM 1 BY 1
  UNTIL FUNCTION STORED-CHAR-LENGTH(S) < i
    IF 1 = i THEN
      MOVE FUNCTION UPPER-CASE(S(i:1)) TO S(i:1)
    ELSE
      MOVE FUNCTION LOWER-CASE(S(i:1)) TO S(i:1)
    END-IF
  END-PERFORM.
  DISPLAY FUNCTION TRIM(S).
  STOP RUN.

