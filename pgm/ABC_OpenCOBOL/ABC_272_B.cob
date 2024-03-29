IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 M          PIC 9(10).
01 N          PIC 9(10).
01 chk11.
   03 chk1    OCCURS 100.
      05 chk  PIC 9(1) OCCURS 100.
01 flg        PIC 9(1) VALUE 1.
01 i          PIC 9(10) COMP.
01 j          PIC 9(10) COMP.
01 k1.
   03 k       PIC 9(10) OCCURS 100 DEPENDING M.
01 l          PIC 9(10) COMP.
01 ln         PIC X(404).
01 pt         PIC S9(10).
01 x11.
   03 x1      OCCURS 100.
      05 x    PIC 9(10) OCCURS 100.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO N M.
  PERFORM VARYING i FROM 1 BY 1 UNTIL M < i
    ACCEPT ln
    MOVE 1 TO pt
    UNSTRING ln DELIMITED SPACE INTO k(i) POINTER pt
    PERFORM VARYING j FROM 1 BY 1 UNTIL k(i) < j
      UNSTRING ln DELIMITED SPACE INTO x(i j) POINTER pt
    END-PERFORM
    PERFORM VARYING j FROM 1 BY 1 UNTIL k(i) < j
      ADD 1 TO j GIVING l
      PERFORM VARYING l FROM l BY 1 UNTIL k(i) < l
        MOVE 1 TO chk(x(i j) x(i l))
      END-PERFORM
    END-PERFORM
  END-PERFORM.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    ADD 1 TO i GIVING j
    PERFORM VARYING j FROM j BY 1 UNTIL N < j
      IF ZERO = chk(i j) MOVE ZERO TO flg EXIT PERFORM
    END-PERFORM
    IF ZERO = flg EXIT PERFORM
  END-PERFORM.
  IF 1 = flg DISPLAY "Yes" ELSE DISPLAY "No".
  STOP RUN.

