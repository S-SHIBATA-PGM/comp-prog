IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD SYSIN.
01 INDATA     PIC X(110000).

WORKING-STORAGE SECTION.
01 N          PIC 9(5).
01 a          PIC 9(10).
01 cur        PIC 9(6) VALUE 1.
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 len        PIC 9(6).
01 ln         PIC X(110000).
01 maxlen     PIC 9(6) VALUE 110000.
01 num        PIC 9(2).
01 r          PIC 9(1).
01 sm         PIC 9(6).
01 zs         PIC Z(6)9.

PROCEDURE DIVISION.
  ACCEPT N.
  OPEN INPUT SYSIN.
  READ SYSIN INTO ln.
  CLOSE SYSIN.
  MOVE N TO maxlen.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1
      UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO a
    PERFORM GETNUM
    ADD num TO sm
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  MOVE sm TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

GETNUM SECTION.
  MOVE ZERO TO num
  PERFORM UNTIL ZERO = a
    DIVIDE 2 INTO a GIVING a REMAINDER r
    IF ZERO = r THEN
      ADD 1 TO NUM
    ELSE
      EXIT PERFORM
    END-IF
  END-PERFORM.
