IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A1.
   03 A       PIC 9(10) OCCURS 359 DEPENDING N.
01 N          PIC 9(10).
01 cur        PIC 9(10).
01 fe         PIC 9(10) VALUE 1.
01 front1.
   03 front   PIC 9(10) VALUE ZERO OCCURS 35000.
01 fs         PIC 9(10) VALUE 1.
01 fsz        PIC 9(10) VALUE 0.
01 i          PIC 9(10) COMP.
01 ln         PIC X(1600).
01 mx         PIC 9(10) VALUE ZERO.
01 pt         PIC S9(10) VALUE 1.
01 qe         PIC 9(10) VALUE 1.
01 qs         PIC 9(10) VALUE 1.
01 qsz        PIC 9(10) VALUE 0.
01 que1.
   03 que     PIC 9(10) VALUE ZERO OCCURS 35000.
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT ln.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    UNSTRING ln DELIMITED SPACE INTO A(i) POINTER pt
  END-PERFORM.
  MOVE 360 TO que(qe).
  ADD 1 TO qe.
  ADD 1 TO qsz.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    PERFORM UNTIL fsz = ZERO AND qsz = ZERO
      IF fsz = ZERO
        MOVE que(qs) TO cur
        MOVE ZERO TO que(qs)
        ADD 1 TO qs
        SUBTRACT 1 FROM qsz
      ELSE
        MOVE front(fe - 1) TO cur
        MOVE ZERO TO front(fe - 1)
        SUBTRACT 1 FROM fe
        SUBTRACT 1 FROM fsz
      END-IF
      IF A(i) < cur
        MOVE A(i) TO que(qe)
        ADD 1 TO qe
        ADD 1 TO qsz
        COMPUTE front(fe) = cur - A(i)
        ADD 1 TO fe
        ADD 1 TO fsz
        EXIT PERFORM
      ELSE
        MOVE cur TO que(qe)
        ADD 1 TO qe
        ADD 1 TO qsz
        SUBTRACT cur FROM A(i)
    END-PERFORM
  END-PERFORM.
  PERFORM VARYING i FROM fs BY 1 UNTIL fe <= i
    IF mx < front(i) MOVE front(i) TO mx END-IF
  END-PERFORM.
  PERFORM VARYING i FROM qs BY 1 UNTIL qe <= i
    IF mx < que(i) MOVE que(i) TO mx END-IF
  END-PERFORM.
  MOVE mx TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

