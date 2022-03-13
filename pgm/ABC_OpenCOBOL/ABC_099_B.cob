IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ab.
   03 ab1 OCCURS 2.
      05 ab11 PIC 9(18).
01 ablen      PIC 9(2) VALUE 2.
01 cur        PIC 9(2) VALUE 1.
01 div        PIC 9(18).
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 ln         PIC X(19).
01 len        PIC 9(2).
01 s          PIC 9(18).
01 t          PIC 9(18).
01 zs         PIC Z(18).

PROCEDURE DIVISION.
  ACCEPT ln.
  PERFORM ablen TIMES
    PERFORM VARYING j FROM cur BY 1
      UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO ab11(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  COMPUTE div = ab11(2) - ab11(1).
  MOVE 0 TO s.
  MOVE 1 TO i.
  PERFORM div TIMES
    ADD i TO s
    ADD 1 TO i
  END-PERFORM.
  COMPUTE t = s - ab11(2).
  MOVE t TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

