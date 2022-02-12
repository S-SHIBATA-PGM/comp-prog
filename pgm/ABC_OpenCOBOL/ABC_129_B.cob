IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(400).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 cur        PIC 9(10) VALUE 1 COMP.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 k          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 ans        PIC 9(10) VALUE 1000000007.
01 num        PIC 9(10) VALUE ZERO.
01 df         PIC 9(10) VALUE ZERO.
01 sm         PIC 9(10) VALUE ZERO.
01 zs         PIC Z(9)9.
01 N          PIC 9(10).
01 W1.
   03 W11 OCCURS 100 DEPENDING ON N.
      05 W    PIC S9(10).

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT ln.
  MOVE N TO maxlen.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO W(i)
    ADD W(i) TO sm
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  PERFORM VARYING k FROM 1 BY 1 UNTIL N < k
    ADD W(k) TO num
    COMPUTE df = sm - 2 * num
    IF df < ans
      COMPUTE ans = df
    END-IF
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
