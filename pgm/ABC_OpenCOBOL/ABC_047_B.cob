IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 H          PIC 9(3).
01 N          PIC 9(3).
01 W          PIC 9(3).
01 a          PIC 9(1).
01 i          PIC 9(3).
01 ln         PIC X(11).
01 ln2        PIC X(9).
01 sq         PIC 9(5).
01 x          PIC 9(3).
01 xl         PIC 9(3).
01 xs         PIC 9(3).
01 y          PIC 9(3).
01 yl         PIC 9(3).
01 ys         PIC 9(3).
01 zs         PIC Z(5)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO W H N.
  MOVE ZERO TO xs.
  MOVE W TO xl.
  MOVE ZERO TO ys.
  MOVE H TO yl.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    ACCEPT ln2
    UNSTRING ln2 DELIMITED BY SPACE INTO x y a
    EVALUATE a
      WHEN 1
        COMPUTE xs = FUNCTION MAX(xs, x)
      WHEN 2
        COMPUTE xl = FUNCTION MIN(xl, x)
      WHEN 3
        COMPUTE ys = FUNCTION MAX(ys, y)
      WHEN 4
        COMPUTE yl = FUNCTION MIN(yl, y)
    END-EVALUATE
  END-PERFORM.
  IF xl <= xs OR yl <= ys THEN
    MOVE ZERO TO sq
  ELSE
    COMPUTE sq = (xl - xs) * (yl - ys)
  END-IF.
  MOVE sq TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

