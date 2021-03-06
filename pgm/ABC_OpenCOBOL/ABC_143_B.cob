IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(10).
01 ans        PIC 9(10) VALUE ZERO.
01 cur        PIC 9(10) VALUE 1 COMP.
01 d1.
   03 d11 OCCURS 100 DEPENDING ON N.
      05 d    PIC 9(10).
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 k          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 ln         PIC X(400).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT ln.
  MOVE N TO maxlen.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO d(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  PERFORM VARYING i FROM 1 BY 1 UNTIL 50 < i
    COMPUTE k = i + 1
    PERFORM VARYING j FROM k BY 1 UNTIL 50 < j
      COMPUTE ans = ans + d(i) * d(j)
    END-PERFORM
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

