IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD SYSIN.
01 INDATA     PIC X(5000).

WORKING-STORAGE SECTION.
01 K          PIC 9(10).
01 N          PIC 9(10).
01 ans        PIC 9(10) VALUE ZERO.
01 cur        PIC 9(10) VALUE 1 COMP.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 ln         PIC X(5000).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 p1.
   03 p11 OCCURS 1000 DEPENDING N.
      05 p    PIC S9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO N K.
  OPEN INPUT SYSIN.
  READ SYSIN INTO INDATA.
  CLOSE SYSIN.
  MOVE INDATA TO ln.
  MOVE N TO maxlen.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO p(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  SORT p11 ASCENDING p.
  PERFORM VARYING i FROM 1 BY 1 UNTIL K < i
    ADD p(i) TO ans
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

