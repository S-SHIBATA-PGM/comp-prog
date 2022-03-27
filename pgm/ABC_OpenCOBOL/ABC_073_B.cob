IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(4).
01 i          PIC 9(6).
01 l          PIC 9(6).
01 ln         PIC X(13).
01 r          PIC 9(6).
01 sm         PIC 9(6).
01 zs         PIC Z(7).

PROCEDURE DIVISION.
  ACCEPT N.
  MOVE 0 TO sm.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    ACCEPT ln
    UNSTRING ln DELIMITED BY SPACE INTO l r
    SUBTRACT l FROM r
    ADD 1 TO r
    ADD r TO sm
  END-PERFORM.
  MOVE sm TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
