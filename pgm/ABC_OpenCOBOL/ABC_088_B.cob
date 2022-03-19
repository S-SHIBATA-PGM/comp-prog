IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(3).
01 alice      PIC 9(5) VALUE 0.
01 bob        PIC 9(5) VALUE 0.
01 card1.
   03 card11 OCCURS 100 DEPENDING ON N.
      05 card PIC 9(3).
01 cur        PIC 9(3) VALUE 1.
01 i          PIC 9(18).
01 j          PIC 9(18).
01 len        PIC 9(3).
01 ln         PIC X(600).
01 q          PIC 9(2).
01 r          PIC 9(1).
01 zs         PIC Z(5)9.

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT ln.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO card(i)
    COMPUTE cur = j + 1
  END-PERFORM.
  SORT card11 ON DESCENDING KEY card.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    DIVIDE 2 INTO i GIVING q REMAINDER r
    IF R = 0 THEN
      ADD card(i) TO bob
    ELSE
      ADD card(i) TO alice
    END-IF
  END-PERFORM.
  SUBTRACT bob FROM alice.
  MOVE alice TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

