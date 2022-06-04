IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD SYSIN.
01 INDATA PIC X(2800000).

WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 N          PIC 9(10).
01 i          PIC 9(10).
01 lst1.
   03 lst     PIC 9(10) VALUE ZERO
              OCCURS 100000 DEPENDING N INDEXED IXlst.
01 pt         PIC S9(10) VALUE 1.
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  OPEN INPUT SYSIN.
  READ SYSIN INTO N.
  READ SYSIN.
  CLOSE SYSIN.
  PERFORM VARYING i FROM 1 BY 1 UNTIL 4 * N - 1 < i
    UNSTRING INDATA DELIMITED SPACE INTO A POINTER pt
    ADD 1 TO lst(A)
  END-PERFORM.
  SET IXlst TO 1.
  SEARCH lst
    WHEN 3 = lst(IXlst)
      MOVE IXlst TO zs
  END-SEARCH.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
