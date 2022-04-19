IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(10).
01 a1.
   03 a11 OCCURS 100 DEPENDING ON N.
      05 a    PIC 9(10).
01 avg        PIC 9(10).
01 cur        PIC 9(10) VALUE 1 COMP.
01 cnt        PIC 9(10) VALUE ZERO.
01 dpp        PIC 9(10).
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 ln         PIC X(400).
01 len        PIC 9(10) COMP.
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 num        PIC 9(10).
01 nw         PIC 9(10) VALUE 1.
01 nx         PIC 9(1) VALUE ZERO.
01 pp         PIC 9(10) VALUE ZERO.
01 r          PIC 9(10).
01 rpp        PIC 9(10).
01 st         PIC 9(10) VALUE ZERO.
01 sm         PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT ln.
  MOVE N TO maxlen.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO a(i)
    ADD a(i) TO sm
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  DIVIDE sm BY N GIVING avg REMAINDER r.
  IF r = ZERO THEN
    PERFORM WITH TEST AFTER UNTIL N < nw
      *> 前の島との架橋工事
      IF nx = 1 THEN
        ADD 1 TO cnt
      END-IF
      *> 人口計算
      ADD a(nw) TO pp
      MOVE 1 TO nx
      COMPUTE num = nw - st + 1
      DIVIDE pp BY num GIVING dpp REMAINDER rpp
      *> 人口が目的の数と同じ数になっているか
      *> 割り切れること
      IF rpp = ZERO THEN
        IF dpp = avg THEN
          *> 次の島との架橋工事
          *> 不要
          MOVE ZERO TO nx
          MOVE ZERO TO pp
          COMPUTE st = nw + 1
        END-IF
      END-IF
      ADD 1 TO nw
    END-PERFORM
    MOVE cnt TO zs
    DISPLAY FUNCTION TRIM(zs)
  ELSE
    DISPLAY -1
  END-IF.
  STOP RUN.

