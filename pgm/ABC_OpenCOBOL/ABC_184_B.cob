IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD SYSIN.
01 INDATA     PIC X(200000).

WORKING-STORAGE SECTION.
01 N          PIC 9(10).
01 X          PIC 9(10).
01 S          PIC X(200000).
01 ans        PIC 9(10) COMP.
01 i          PIC 9(10) COMP.
01 ln         PIC X(200000).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  OPEN INPUT SYSIN.
  READ SYSIN INTO ln.
  READ SYSIN INTO S.
  CLOSE SYSIN.
  UNSTRING ln DELIMITED BY SPACE INTO N X.
  MOVE X TO ans.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    IF "o" = S(i:1) THEN
      ADD 1 TO ans
    ELSE
      IF ZERO < ans THEN
        SUBTRACT 1 FROM ans
      END-IF
    END-IF
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

