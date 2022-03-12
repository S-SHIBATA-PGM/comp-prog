IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 DN1.
   03 DN11 OCCURS 2.
      05 DN   PIC 9(7).
01 ans        PIC Z(6)9.
01 cur        PIC 9(2) VALUE 1.
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 len        PIC 9(2).
01 ln         PIC X(10).
01 maxlen     PIC 9(1) VALUE 2.
01 tmp        PIC 9(7).

PROCEDURE DIVISION.
  ACCEPT ln.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO DN(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  IF DN(2) = 100 THEN
    ADD 1 TO DN(2)
  END-IF.
  COMPUTE tmp = 100 ** DN(1) * DN(2);
  MOVE tmp TO ans.
  DISPLAY FUNCTION TRIM(ans).
  STOP RUN.

