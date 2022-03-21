IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 FLG        PIC 9(1).
01 N          PIC 9(3).
01 a          PIC 9(3).
01 b          PIC 9(3).
01 bk         PIC 9(3).
01 cnt        PIC 9(3) VALUE 0.
01 edtmp      PIC 9(3).
01 i          PIC 9(3).
01 nowidx     PIC 9(4) VALUE 0.
01 q          PIC 9(3).
01 qary1.
   03 qary11 OCCURS 100.
      05 qary PIC 9(3).
01 qfirst     PIC 9(3) VALUE 1.
01 qlast      PIC 9(3).
01 ret        PIC 9(3).
01 sidx       PIC 9(4) VALUE 0.
01 stack1.
   03 stack11 OCCURS 1000.
      05 st   PIC 9(3).
      05 ed   PIC 9(3).
01 sttmp      PIC 9(3).
01 t          PIC 9(3).
01 tmp        PIC 9(3) VALUE 0.
01 x          PIC 9(3).
01 zs         PIC Z(4).

PROCEDURE DIVISION.
  ACCEPT N.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    ACCEPT qary(i)
  END-PERFORM.
  MOVE N TO qlast.
  PERFORM PARTITION.
  MOVE 1 TO FLG.
  PERFORM UNTIL FLG = 0
    PERFORM QSORT
    IF FLG = 0 THEN
      IF nowidx < sidx THEN
        MOVE 1 TO FLG
        ADD 1 TO nowidx
        MOVE st(nowidx) TO qfirst
        MOVE ed(nowidx) TO qlast
        PERFORM PARTITION
      END-IF
    END-IF
  END-PERFORM.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    IF tmp < qary(i) THEN
      ADD 1 TO cnt
    END-IF
    MOVE qary(i) TO tmp
  END-PERFORM.
  MOVE cnt TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

PARTITION SECTION.
  MOVE qary(qlast) TO x
  MOVE qfirst TO a
  SUBTRACT 1 FROM a
  PERFORM VARYING b FROM qfirst BY 1 UNTIL qlast <= b
    IF qary(b) <= x THEN
      ADD 1 TO a
      MOVE qary(a) TO t
      MOVE qary(b) TO qary(a)
      MOVE t TO qary(b)
    END-IF
  END-PERFORM
  ADD 1 TO a
  MOVE qary(a) TO t
  MOVE qary(qlast) TO qary(a)
  MOVE t TO qary(qlast)
  MOVE a TO q.

QSORT SECTION.
  IF qfirst < qlast THEN
    MOVE q TO ret
    MOVE qlast TO bk
    SUBTRACT 1 FROM ret GIVING qlast
    ADD 1 ret GIVING sttmp
    MOVE bk TO edtmp
    IF sttmp < edtmp THEN
      ADD 1 TO sidx
      MOVE sttmp TO st(sidx)
      MOVE edtmp TO ed(sidx)
    END-IF
    IF qfirst < qlast THEN
      PERFORM PARTITION
    ELSE
      MOVE 0 TO FLG
    END-IF
  ELSE
    MOVE 0 TO FLG
  END-IF.

