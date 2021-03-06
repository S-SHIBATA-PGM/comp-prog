IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD SYSIN.
01 INDATA     PIC X(1100000).

WORKING-STORAGE SECTION.
01 H1.
   03 H       PIC 9(10) OCCURS 100000 DEPENDING N.
01 N          PIC 9(10).
01 ans        PIC 9(10) VALUE ZERO.
01 i          PIC 9(10) COMP.
01 pt         PIC S9(10) VALUE 1.
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  OPEN INPUT SYSIN.
  READ SYSIN INTO N.
  READ SYSIN.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    UNSTRING INDATA DELIMITED SPACE INTO H(i) POINTER pt
  END-PERFORM.
  CLOSE SYSIN.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    IF ans < H(i) MOVE H(i) TO ans ELSE EXIT PERFORM
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

