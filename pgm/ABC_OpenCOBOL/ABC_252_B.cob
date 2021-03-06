IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A11.
   03 A1      OCCURS 100 DEPENDING N.
      05 idx  PIC 9(10).
      05 A    PIC 9(10).
01 B1.
   03 B       PIC 9(10) OCCURS 100 DEPENDING K INDEXED IXB.
01 K          PIC 9(10).
01 N          PIC 9(10).
01 flg        PIC 9(1) VALUE 1.
01 i          PIC 9(10) COMP.
01 ln         PIC X(400).
01 pt         PIC S9(10) VALUE 1.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO N K.
  ACCEPT ln.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    MOVE i TO idx(i)
    UNSTRING ln DELIMITED SPACE INTO A(i) POINTER pt
  END-PERFORM.
  ACCEPT ln.
  MOVE 1 TO pt.
  PERFORM VARYING i FROM 1 BY 1 UNTIL K < i
    UNSTRING ln DELIMITED SPACE INTO B(i) POINTER pt
  END-PERFORM.
  SORT A1 DESCENDING A.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    IF A(1) = A(i)
      SET IXB TO 1
      SEARCH B
        WHEN B(IXB) = idx(i)
          MOVE ZERO TO flg
      END-SEARCH
    ELSE EXIT PERFORM END-IF
    IF ZERO = flg EXIT PERFORM
  END-PERFORM.
  IF ZERO = flg DISPLAY "Yes" ELSE DISPLAY "No".
  STOP RUN.

