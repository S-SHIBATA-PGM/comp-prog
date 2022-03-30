IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(6).
01 a          PIC 9(6).
01 ary1.
   03 ary11 OCCURS 100000.
      05 ary  PIC 9(6) VALUE 0.
01 cnt        PIC S9(6) VALUE 0.
01 flg1.
   03 flg11 OCCURS 100000.
      05 flg  PIC 9(1) VALUE 0.
01 flg2       PIC 9(1) VALUE 0.
01 i          PIC 9(6).
01 now        PIC 9(6) VALUE 1.
01 zs         PIC -(7).

PROCEDURE DIVISION.
  ACCEPT N.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    ACCEPT a
    MOVE a TO ary(i)
  END-PERFORM.
  MOVE 1 TO flg(1).
  PERFORM VARYING i FROM 1 BY 1 UNTIL flg(ary(now)) = 1
    ADD 1 TO cnt
    MOVE ary(now) TO now
    MOVE 1 TO flg(now)
    IF now = 2 THEN
      MOVE 1 TO flg2
      EXIT PERFORM
    END-IF
  END-PERFORM.
  IF flg2 = 0 THEN
    MOVE -1 TO cnt
  END-IF.
  move cnt TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

