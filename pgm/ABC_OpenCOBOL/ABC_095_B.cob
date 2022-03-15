IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 NX1.
   03 NX11 OCCURS 2.
      05 NX   PIC 9(8).
01 cur        PIC 9(2) VALUE 1.
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 k          PIC 9(18).
01 len        PIC 9(2).
01 ln         PIC X(11).
01 ln2        PIC 9(4).
01 maxlen     PIC 9(1) VALUE 2.
01 mn         PIC 9(6).
01 sm         PIC 9(6).
01 tmp        PIC 9(8).
01 x          PIC 9(6).
01 zs         PIC Z(9).

PROCEDURE DIVISION.
  ACCEPT ln.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO NX(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  MOVE 0 TO sm.
  MOVE 1001 TO mn.
  PERFORM VARYING k FROM 1 BY 1 UNTIL NX(1) < k
    ACCEPT ln2
    ADD ln2 TO sm
    COMPUTE mn = FUNCTION MIN(mn, ln2)
  END-PERFORM.
  SUBTRACT sm FROM NX(2) GIVING tmp.
  DIVIDE mn INTO tmp GIVING x.
  ADD x TO NX(1).
  MOVE NX(1) TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

