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
01 A1.
   03 A       PIC 9(10) OCCURS 100000 DEPENDING N.
01 M          PIC 9(10).
01 N          PIC 9(10).
01 T          PIC S9(10).
01 XY1.
   03 XY      OCCURS 100000 DEPENDING M.
      05 X    PIC 9(10).
      05 Y    PIC 9(10).
01 flg        PIC 9(1) VALUE ZERO.
01 i          PIC 9(10) COMP.
01 idxxy      PIC 9(10) COMP VALUE 1.
01 ln         PIC X(400).
01 pt         PIC S9(10) VALUE 1.
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO N M T.
  OPEN INPUT SYSIN.
  READ SYSIN INTO INDATA.
  CLOSE SYSIN.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N - 1 < i
    UNSTRING INDATA DELIMITED SPACE INTO A(i) POINTER pt
  END-PERFORM.
  PERFORM VARYING i FROM 1 BY 1 UNTIL M < i
    ACCEPT ln
    UNSTRING ln DELIMITED SPACE INTO X(i) Y(i)
  END-PERFORM.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N - 1 < i
    IF T <= ZERO MOVE 1 TO flg EXIT PERFORM END-IF
    IF i = X(idxxy) ADD Y(idxxy) TO T ADD 1 TO idxxy END-IF
    SUBTRACT A(i) FROM T
  END-PERFORM.
  IF ZERO < T AND ZERO = flg DISPLAY "Yes" ELSE DISPLAY "No".
  STOP RUN.

