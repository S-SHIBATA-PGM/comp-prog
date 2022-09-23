IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 M          PIC 9(10).
01 N          PIC 9(10).
01 UV2.
   03 UV1     OCCURS 100.
      05 UV   PIC 9(1) VALUE ZERO OCCURS 100.
01 ans        PIC 9(10) VALUE ZERO.
01 i          PIC 9(10) COMP.
01 j          PIC 9(10) COMP.
01 k          PIC 9(10) COMP.
01 ln         PIC X(400).
01 uidx       PIC 9(10).
01 vidx       PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO N M.
  PERFORM VARYING i FROM 1 BY 1 UNTIL M < i
    ACCEPT ln
    UNSTRING ln DELIMITED SPACE INTO uidx vidx
    MOVE 1 TO UV(uidx vidx)
    MOVE 1 TO UV(vidx uidx)
  END-PERFORM.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    ADD 1 TO i GIVING j
    PERFORM VARYING j FROM j BY 1 UNTIL N < j
      ADD 1 TO j GIVING k
      PERFORM VARYING k FROM k BY 1 UNTIL N < k
        IF 1 = UV(i j) AND UV(j k) AND UV(k i) ADD 1 TO ans
      END-PERFORM
    END-PERFORM
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
