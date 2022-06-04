IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
*> -9223372036854775808
01 N          PIC X(20).
01 flg        PIC 9(1) VALUE ZERO.
01 len        PIC 9(10).
01 len31      PIC 9(10).
01 str        PIC X(20).
01 str31      PIC X(10) VALUE "2147483648".

PROCEDURE DIVISION.
  ACCEPT N.
  MOVE FUNCTION STORED-CHAR-LENGTH(N) TO len.
  MOVE FUNCTION STORED-CHAR-LENGTH(str31) TO len31.
  IF "-" = N(1:1) MOVE N(2:len) TO str SUBTRACT 1 FROM len
  ELSE MOVE N TO str.
  IF len < len31 MOVE 1 TO flg
  ELSE IF len31 = len
    IF FUNCTION NUMVAL(str) < FUNCTION NUMVAL(str31)
      MOVE 1 TO flg
    ELSE IF N(1:1) = "-"
    AND FUNCTION NUMVAL(str31) = FUNCTION NUMVAL(str)
      MOVE 1 TO flg.
  IF 1 = flg DISPLAY "Yes" ELSE DISPLAY "No".
  STOP RUN.
