IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
   SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD SYSIN.
   01 INDATA  PIC X(60000).
WORKING-STORAGE SECTION.
01 ln         PIC X(400).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 cur        PIC 9(10) VALUE 1 COMP.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 accum      PIC 9(10) VALUE ZERO COMP.
01 ans        PIC 9(10).
01 zs         PIC Z(9)9.
01 N          PIC 9(10).
01 M          PIC 9(10).
01 A          PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO N M.
  MOVE M TO maxlen.
  OPEN INPUT SYSIN.
  READ SYSIN INTO INDATA.
  CLOSE SYSIN.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL INDATA(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE INDATA(cur:len) TO A
    ADD A TO accum
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  IF N < accum THEN
    DISPLAY -1
  ELSE
    COMPUTE ans = N - accum
    MOVE ans TO zs
    DISPLAY FUNCTION TRIM(zs)
  END-IF.
  STOP RUN.