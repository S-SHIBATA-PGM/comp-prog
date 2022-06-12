IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 D          PIC 9(10).
01 N          PIC 9(10).
01 X1.
   03 X11 OCCURS 100.
     05 X111 OCCURS 100.
        07 X PIC S9(10).
01 ans        PIC 9(10) VALUE ZERO.
01 cur        PIC 9(10) VALUE 1 COMP.
01 eidx       PIC 9(10) COMP.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 jidx       PIC 9(10) VALUE 1 COMP.
01 k          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 ln         PIC X(400).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 num        PIC 9(10).
01 nxt        PIC 9(10)V9(10).
01 pre        PIC 9(10)V9(10).
01 sidx       PIC 9(10) COMP VALUE 1.
01 st         PIC 9(10) COMP.
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO N D.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    ACCEPT ln
    MOVE D TO maxlen
    MOVE 1 TO cur
    MOVE 1 TO jidx
    PERFORM maxlen TIMES
      PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
      END-PERFORM
      COMPUTE len = j - cur
      IF ln(cur:1) = "-"
        COMPUTE sidx = cur + 1
        COMPUTE eidx = len - 1
        MOVE ln(sidx:eidx) TO X(i jidx)
        COMPUTE X(i jidx) = -X(i jidx)
      ELSE
        MOVE ln(cur:len) TO X(i jidx)
      END-IF
      COMPUTE cur = j + 1
      ADD 1 TO jidx
    END-PERFORM
  END-PERFORM.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    COMPUTE st = i + 1
    PERFORM VARYING j FROM st BY 1 UNTIL N < j
      MOVE ZERO TO num
      PERFORM VARYING k FROM 1 BY 1 UNTIL D < k
        COMPUTE num = num + (X(j k) - X(i k)) ** 2
      END-PERFORM
      COMPUTE pre = FUNCTION SQRT(num)
      MOVE pre TO num
      MOVE num TO nxt
      IF pre = nxt
        ADD 1 TO ans
      END-IF
    END-PERFORM
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

