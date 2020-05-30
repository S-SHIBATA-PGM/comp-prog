IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N              PIC 9(10).
01 K              PIC 9(10).
01 idx            PIC 9(10).
01 ln             PIC X(599).
01 maxlen         PIC 9(10) VALUE 100 COMP.
01 cur            PIC 9(10) VALUE 1 COMP.
01 i              PIC 9(10) VALUE 1 COMP.
01 j              PIC 9(10) COMP.
01 len            PIC 9(10) COMP.
01 ans            PIC 9(10).
01 zs             PIC Z(9)9.
01 A1.
    03 A11 OCCURS 100 DEPENDING ON N.
        05 A      PIC S9(10) VALUE 1.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO N K.
  PERFORM K TIMES
      ACCEPT maxlen
      ACCEPT ln
      MOVE 1 TO cur
      PERFORM maxlen TIMES
          PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
          END-PERFORM
          COMPUTE len = j - cur
          MOVE ln(cur:len) TO idx
          MOVE ZERO TO A(idx)
          COMPUTE cur = j + 1
          ADD 1 TO i
      END-PERFORM
  END-PERFORM.
  PERFORM VARYING j FROM 1 BY 1 UNTIL N < j
      ADD A(j) TO ans
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
