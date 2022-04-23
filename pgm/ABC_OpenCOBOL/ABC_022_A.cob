IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC S9(10).
01 N          PIC 9(10).
01 S          PIC 9(10).
01 T          PIC 9(10).
01 cnt        PIC 9(10) VALUE ZERO COMP.
01 i          PIC 9(10).
01 ln         PIC X(400).
01 pre        PIC S9(10) VALUE ZERO.
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO N S T.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    ACCEPT A
    ADD pre TO A
    IF S <= A AND A <= T THEN
      ADD 1 TO cnt
    END-IF
    MOVE A TO pre
  END-PERFORM.
  MOVE cnt TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
