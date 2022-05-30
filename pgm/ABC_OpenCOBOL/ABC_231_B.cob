IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N         PIC 9(10).
01 S1.
   03 S      PIC X(10) OCCURS 100 DEPENDING N.
01 ans       PIC X(10).
01 i         PIC 9(10) COMP.
01 idx       PIC 9(10).
01 j         PIC 9(10) VALUE 1 COMP.
01 maxvotes  PIC 9(10) VALUE ZERO.
01 votes1.
   03 votes OCCURS 100 INDEXED IXvotes.
     05 name   PIC X(10).
     05 num    PIC 9(10) VALUE ZERO.

PROCEDURE DIVISION.
  ACCEPT N.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    ACCEPT S(i)
  END-PERFORM.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    SET IXvotes TO 1
    SEARCH votes
      WHEN S(i) = name(IXvotes)
        MOVE IXvotes TO idx
        ADD 1 TO num(idx)
      WHEN space = name(IXvotes)
        MOVE j TO idx
        MOVE S(i) TO name(idx)
        MOVE 1 TO num(idx)
        ADD 1 TO j
    END-SEARCH
    IF maxvotes < num(idx)
      MOVE num(idx) TO maxvotes
      MOVE name(idx) TO ans
  END-PERFORM.
  DISPLAY FUNCTION TRIM(ans).
  STOP RUN.

