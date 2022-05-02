IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 W          PIC X(30).
01 aiueo      PIC X(30) VALUE "aiueo".
01 ans        PIC X(30).
01 i          PIC 9(10) COMP.
01 j          PIC 9(10) VALUE 1 COMP.
01 num        PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT W.
  PERFORM VARYING i FROM 1 BY 1
  UNTIL FUNCTION STORED-CHAR-LENGTH(W) < i
    MOVE ZERO TO num
    INSPECT aiueo TALLYING num FOR ALL W(i:1)
    IF ZERO = num THEN
      MOVE W(i:1) TO ans(j:1)
      ADD 1 TO j
    END-IF
  END-PERFORM.
  DISPLAY FUNCTION TRIM(ans).
  STOP RUN.

