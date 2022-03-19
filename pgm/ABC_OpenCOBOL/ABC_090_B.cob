IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
 01 AB1.
    03 AB11 OCCURS 2.
       05 AB  PIC 9(5).
 01 X         PIC X(6).
 01 cnt       PIC 9(5).
 01 cur       PIC 9(12) VALUE 1.
 01 i         PIC 9(18) VALUE 1.
 01 j         PIC 9(18).
 01 k         PIC 9(6).
 01 len       PIC 9(12).
 01 ln        PIC X(12).
 01 maxlen    PIC 9(1)  VALUE 2.
 01 zs        PIC Z(5)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1
      UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO AB(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  MOVE 0 TO cnt.
  PERFORM VARYING k FROM AB(1) BY 1 UNTIL AB(2) < k
    MOVE k TO X
    IF X(2:1) = X(6:1) AND X(3:1) = X(5:1) THEN
      ADD 1 TO cnt
    END-IF
  END-PERFORM.
  MOVE cnt TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

