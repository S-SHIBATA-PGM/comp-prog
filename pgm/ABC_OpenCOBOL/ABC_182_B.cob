IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A1.
   03 A       PIC 9(10) OCCURS 100 DEPENDING N.
01 N          PIC 9(10).
01 ans        PIC 9(10) VALUE ZERO.
01 cur        PIC 9(10).
01 d          PIC 9(10).
01 ed         PIC 9(10) VALUE 1000.
01 frq        PIC 9(10) VALUE ZERO.
01 i          PIC 9(10) COMP.
01 j          PIC 9(10) COMP.
01 ln         PIC X(500).
01 mx         PIC 9(10) VALUE ZERO.
01 pt         PIC 9(10) VALUE 1.
01 r          PIC 9(10).
01 st         PIC 9(10) VALUE 2.
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT ln.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    UNSTRING ln DELIMITED BY SPACE INTO A(i) WITH POINTER pt
    IF mx < A(i) THEN
      MOVE A(i) TO mx
    END-IF
  END-PERFORM.
  PERFORM VARYING i FROM st BY 1 UNTIL ed < i
    MOVE ZERO TO cur
    PERFORM VARYING j FROM 1 BY 1 UNTIL N < j OR mx < j
      DIVIDE A(j) BY i GIVING d REMAINDER r
      IF ZERO = r THEN
        ADD 1 TO cur
      END-IF
    END-PERFORM
    IF frq < cur
      MOVE cur TO frq
      MOVE i TO ans
    END-IF
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

