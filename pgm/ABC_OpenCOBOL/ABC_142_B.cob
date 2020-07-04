IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
   SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD SYSIN.
   01 INDATA  PIC X(400000).
WORKING-STORAGE SECTION.
01 ln         PIC X(400).
01 maxlen     PIC 9(10) COMP.
01 cur        PIC 9(10) VALUE 1 COMP.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 ans        PIC 9(10) VALUE ZERO.
01 zs         PIC Z(9)9.
01 N          PIC 9(10).
01 K          PIC 9(10).
01 h1.
   03 h11 OCCURS 100000 DEPENDING ON N.
      05 h    PIC S9(10).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO N K.
  OPEN INPUT SYSIN.
  READ SYSIN INTO INDATA.
  CLOSE SYSIN.
  MOVE N TO maxlen.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL INDATA(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE INDATA(cur:len) TO h(i)
    IF K <= h(i)
      ADD 1 TO ans
    END-IF
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
