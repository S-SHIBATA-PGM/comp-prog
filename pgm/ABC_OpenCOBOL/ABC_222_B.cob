IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD SYSIN.
01 INDATA PIC X(400000).

WORKING-STORAGE SECTION.
01 N         PIC 9(10).
01 P         PIC 9(10).
01 a         PIC 9(10).
01 ans       PIC 9(10) COMP.
01 i         PIC 9(10) COMP.
01 pt        PIC 9(10) VALUE 1.
01 zs        PIC Z(9)9.

PROCEDURE DIVISION.
  OPEN INPUT SYSIN.
  READ SYSIN.
  UNSTRING INDATA DELIMITED SPACE INTO N P.
  READ SYSIN.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    UNSTRING INDATA DELIMITED SPACE INTO a POINTER pt
    IF a < P ADD 1 TO ans
  END-PERFORM.
  CLOSE SYSIN.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
