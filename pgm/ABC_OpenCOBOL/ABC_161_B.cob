IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A1.
   03 A11 OCCURS 100 DEPENDING ON N.
      05 A    PIC 9(10) COMP.
01 M          PIC 9(10).
01 N          PIC 9(10).
01 accum      PIC 9(10) VALUE ZERO COMP.
01 ans        PIC 9(10).
01 cur        PIC 9(10) VALUE 1 COMP.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 ln         PIC X(500).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO N M.
  MOVE N TO maxlen.
  ACCEPT ln.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO A(i)
    ADD A(i) TO accum
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  SORT A11 DESCENDING A.
  IF accum / (4 * M) <= A(M) THEN
    DISPLAY "Yes"
  ELSE
    DISPLAY "No"
  END-IF.
  STOP RUN.

