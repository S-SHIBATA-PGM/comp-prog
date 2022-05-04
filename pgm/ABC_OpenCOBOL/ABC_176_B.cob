IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD SYSIN.
01 INDATA     PIC X(200001).

WORKING-STORAGE SECTION.
01 N          PIC X(200001).
01 d          PIC 9(10).
01 i          PIC 9(10) VALUE 1 COMP.
01 len        PIC 9(10).
01 r          PIC 9(10).
01 num        PIC 9(10) VALUE ZERO.

PROCEDURE DIVISION.
  OPEN INPUT SYSIN.
  READ SYSIN INTO N.
  CLOSE SYSIN.
  MOVE FUNCTION STORED-CHAR-LENGTH(N) TO len
  PERFORM VARYING i FROM 1 BY 1 UNTIL len < i
    ADD FUNCTION NUMVAL(N(i:1)) TO num
  END-PERFORM.
  DIVIDE num BY 9 GIVING d REMAINDER r.
  IF ZERO = r THEN
    DISPLAY "Yes"
  ELSE
    DISPLAY "No"
  END-IF.
  STOP RUN.

