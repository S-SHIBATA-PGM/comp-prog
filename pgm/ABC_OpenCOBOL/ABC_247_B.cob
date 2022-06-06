IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(10).
01 i          PIC 9(10) COMP.
01 j          PIC 9(10) COMP.
01 k          PIC 9(10) COMP.
01 ln         PIC X(30).
01 scnt       PIC 9(10) COMP.
01 st1.
   03 st      OCCURS 100 DEPENDING N.
      05 s    PIC X(10).
      05 t    PIC X(10).
01 tcnt       PIC 9(10) COMP.

PROCEDURE DIVISION.
  ACCEPT N.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    ACCEPT ln
    UNSTRING ln DELIMITED SPACE INTO s(i) t(i)
  END-PERFORM.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    MOVE ZERO TO scnt tcnt
    PERFORM VARYING j FROM 1 BY 1 UNTIL N < j
      IF i NOT = j
        IF s(i) = s(j) ADD 1 TO scnt END-IF
        IF s(i) = t(j) ADD 1 TO tcnt END-IF
      END-IF
    END-PERFORM
    IF scnt NOT = ZERO OR tcnt NOT = ZERO
      MOVE ZERO TO scnt tcnt
      PERFORM VARYING j FROM 1 BY 1 UNTIL N < j
        IF i NOT = j
          IF t(i) = s(j) ADD 1 TO scnt END-IF
          IF t(i) = t(j) ADD 1 TO tcnt END-IF
        END-IF
      END-PERFORM
      IF scnt NOT = ZERO OR tcnt NOT = ZERO EXIT PERFORM
    END-IF
  END-PERFORM.
  IF N + 1 = i DISPLAY "Yes" ELSE DISPLAY "No"
  STOP RUN.

