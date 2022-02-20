IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
   SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
   FD SYSIN.
      01 INDATA PIC X(10000).

WORKING-STORAGE SECTION.
01 ln         PIC X(10000).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 cur        PIC 9(10) VALUE 1 COMP.
01 dif        PIC 9(10)V9(3).
01 difmin     PIC 9(10)V9(3) VALUE 1000000007.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 ans        PIC 9(10).
01 zs         PIC Z(9)9.
01 A          PIC S9(10).
01 H          PIC 9(10).
01 N          PIC 9(10).
01 T          PIC 9(10).

PROCEDURE DIVISION.
  OPEN INPUT SYSIN.
  READ SYSIN INTO ln.
  MOVE FUNCTION TRIM(ln) TO N.
  READ SYSIN INTO ln.
  UNSTRING ln DELIMITED BY SPACE INTO T A.
  MOVE N TO maxlen.
  READ SYSIN INTO ln.
  CLOSE SYSIN.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO H
    COMPUTE dif = A - T + H * 0.006
    IF dif < difmin
      MOVE dif TO difmin
      MOVE i TO ans
    END-IF
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.