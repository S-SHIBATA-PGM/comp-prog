IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ans1.
   03 ans11 OCCURS 10.
      05 ans  PIC X(1).
01 i          PIC 9(2).
01 len        PIC 9(2).
01 now        PIC 9(2).
01 s1.
   03 s11 OCCURS 10.
      05 s    PIC X(1).

PROCEDURE DIVISION.
  ACCEPT s1.
  COMPUTE len = FUNCTION STORED-CHAR-LENGTH(s1).
  MOVE ZERO TO now.
  PERFORM VARYING i FROM 1 BY 1 UNTIL len < i
    IF s(i) = 'B' THEN
      IF now NOT = ZERO THEN
        MOVE SPACE TO ans(now)
        SUBTRACT 1 FROM now
      END-IF
    ELSE
      ADD 1 TO now
      MOVE s(i) TO ans(now)
    END-IF
  END-PERFORM.
  DISPLAY FUNCTION TRIM(ans1).
  STOP RUN.
