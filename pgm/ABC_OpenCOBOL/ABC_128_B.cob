IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(400).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 zs         PIC Z(9)9.
01 N          PIC 9(10).
01 restaurant1.
   03 restaurant11 OCCURS 100 DEPENDING ON N.
      05 num  PIC 9(10).
      05 S    PIC X(10).
      05 P    PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT N.
  MOVE N TO maxlen.
  PERFORM maxlen TIMES
    MOVE i TO num(i)
    ACCEPT ln
    UNSTRING ln DELIMITED BY SPACE INTO S(i) P(i)
    ADD 1 TO i
  END-PERFORM.
  SORT restaurant11 ASCENDING S
                    DESCENDING P.
  PERFORM VARYING j FROM 1 BY 1 UNTIL N < j
    MOVE num(j) TO zs
    DISPLAY FUNCTION TRIM(zs)
  END-PERFORM.
  STOP RUN.
