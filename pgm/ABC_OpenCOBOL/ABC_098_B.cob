IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(3).
01 S          PIC X(101).
01 X1.
   03 XNUM    PIC 9(2) VALUE 0.
   03 X11 OCCURS 26.
      05 X    PIC X(1).
01 Y1.
   03 YNUM    PIC 9(2) VALUE 0.
   03 Y11 OCCURS 26.
      05 Y    PIC X(1).
01 ans        PIC Z9.
01 chr        PIC X(1) VALUE SPACE.
01 cnt        PIC 9(2) VALUE 0.
01 cntmax     PIC 9(2) VALUE 0.
01 cur        PIC 9(3).
01 flg        PIC 9(1) VALUE 0.
01 i          PIC 9(3).
01 j          PIC 9(3).
01 k          PIC 9(3).
01 len        PIC 9(1) VALUE 1.
01 str        PIC X(101) VALUE SPACE.

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT S.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    MOVE S(i : len) TO chr
    MOVE 0 TO flg
    PERFORM VARYING j FROM 1 BY 1 UNTIL XNUM < j
      IF X(j) = chr THEN
        MOVE 1 TO flg
      END-IF
    END-PERFORM
    IF flg = 0 THEN
      ADD 1 TO XNUM
      MOVE chr TO X(XNUM)
    END-IF
    INITIALIZE Y1
    COMPUTE cur = i + 1
    MOVE S(cur : N - i) TO str
    PERFORM VARYING j FROM 1 BY 1 UNTIL N - i < j
      MOVE str(j : len) TO chr
      MOVE 0 TO flg
      PERFORM VARYING k FROM 1 BY 1 UNTIL YNUM < k
        IF Y(k) = chr THEN
          MOVE 1 TO flg
        END-IF
      END-PERFORM
      IF flg = 0 THEN
        ADD 1 TO YNUM
        MOVE chr TO Y(YNUM)
      END-IF
    END-PERFORM
    MOVE 0 TO cnt
    PERFORM VARYING j FROM 1 BY 1 UNTIL XNUM < j
      PERFORM VARYING k FROM 1 BY 1 UNTIL YNUM < k
        IF X(j) = Y(k) THEN
          ADD 1 TO cnt
        END-IF
      END-PERFORM
    END-PERFORM
    COMPUTE cntmax = FUNCTION MAX(cntmax, cnt)
  END-PERFORM.
  MOVE cntmax TO ans.
  DISPLAY FUNCTION TRIM(ans).
  STOP RUN.

