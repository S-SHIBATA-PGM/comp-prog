IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(3).
01 i          PIC 9(10).
01 ans        PIC 9(10) VALUE ZERO.
01 num        PIC 9(10) VALUE ZERO.
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT S.
  PERFORM VARYING i FROM 1 BY 1 UNTIL 3 < i
    IF "R" = S(i:1) THEN
      ADD 1 TO num
    ELSE
      MOVE ZERO TO num
    END-IF
    COMPUTE ans = FUNCTION MAX(ans, num)
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
