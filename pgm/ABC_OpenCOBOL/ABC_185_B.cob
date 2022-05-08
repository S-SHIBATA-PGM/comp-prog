IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A1.
   03 A       PIC 9(10) OCCURS 1000 DEPENDING M.
01 B1.
   03 B       PIC 9(10) OCCURS 1000 DEPENDING M.
01 M          PIC 9(10).
01 N          PIC 9(10).
01 T          PIC 9(10).
01 cur        PIC S9(10).
01 i          PIC 9(10) COMP.
01 j          PIC 9(10) COMP.
01 ln         PIC X(400).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO N M T.
  PERFORM VARYING i FROM 1 BY 1 UNTIL M < i
    ACCEPT ln
    UNSTRING ln DELIMITED BY SPACE INTO A(i) B(i)
  END-PERFORM.
  MOVE N TO cur.
  SUBTRACT A(1) FROM cur.

  IF ZERO < cur AND cur + B(1) - A(1) < N THEN
    COMPUTE cur = cur + B(1) - A(1)
  ELSE
    IF ZERO < cur AND N < cur + B(1) - A(1) THEN
      MOVE N TO cur
    END-IF
  END-IF.
  IF ZERO < cur THEN
    PERFORM VARYING i FROM 2 BY 1 UNTIL M < i
      COMPUTE cur = cur - A(i) + B(i - 1)
      IF cur <= ZERO THEN
        EXIT PERFORM
      END-IF
      IF cur + B(i) - A(i) < N THEN
        COMPUTE cur = cur + B(i) - A(i)
      ELSE
        MOVE N TO cur
      END-IF
    END-PERFORM
  END-IF.
  IF ZERO < cur AND ZERO < cur - T + B(M) THEN
    DISPLAY "Yes"
  ELSE
    DISPLAY "No"
  END-IF.
  STOP RUN.

