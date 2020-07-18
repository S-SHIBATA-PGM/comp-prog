IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(500).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 cur        PIC 9(10) VALUE 1 COMP.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 ans        PIC 9(10)V9(14) VALUE ZERO.
01 zs         PIC Z(9)9.9(14).
01 N          PIC 9(10).
01 A1.
   03 A11 OCCURS 100 DEPENDING ON N.
      05 A    PIC S9(10).

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT ln.
  MOVE N TO maxlen.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO A(i)
    COMPUTE ans = ans + 1 / A(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  COMPUTE ans = 1 / ans.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
