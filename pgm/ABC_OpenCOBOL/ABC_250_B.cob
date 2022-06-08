IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 B          PIC 9(10).
01 N          PIC 9(10).
01 cur        PIC X(1) VALUE "#".
01 i          PIC 9(10) COMP.
01 j          PIC 9(10) COMP.
01 k          PIC 9(10) COMP.
01 ln         PIC X(100).
01 q          PIC 9(10).
01 r          PIC 9(10).
01 str        PIC X(100).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO N A B.
  MOVE SPACE TO ln
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    IF 1 NOT = i
      INSPECT str REPLACING ALL "#" BY "X"
      INSPECT str REPLACING ALL "." BY "#"
      INSPECT str REPLACING ALL "X" BY "."
    ELSE
      PERFORM VARYING j FROM 1 BY 1 UNTIL N < j
        DIVIDE j BY B GIVING q REMAINDER r
        IF "#" = cur
          MOVE "." TO cur
        ELSE
          MOVE "#" TO cur
        END-IF
        PERFORM VARYING k FROM 1 BY 1 UNTIL B < k
          MOVE cur TO str(B * (j - 1) + k:1)
        END-PERFORM
      END-PERFORM
    END-IF
    PERFORM A TIMES
      DISPLAY FUNCTION TRIM(str)
    END-PERFORM
  END-PERFORM.
  STOP RUN.

