IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 P          PIC 9(10).
01 ans        PIC X(26).
01 i          PIC 9(10).
01 ln         PIC X(100).
01 pt         PIC 9(10) VALUE 1.

PROCEDURE DIVISION.
  ACCEPT ln.
  PERFORM VARYING i FROM 1 BY 1 UNTIL 26 < i
    UNSTRING ln DELIMITED SPACE INTO P POINTER pt
    MOVE FUNCTION CHAR(FUNCTION ORD("a") + P - 1) TO ans(i:1)
  END-PERFORM.
  DISPLAY ans.
  STOP RUN.

