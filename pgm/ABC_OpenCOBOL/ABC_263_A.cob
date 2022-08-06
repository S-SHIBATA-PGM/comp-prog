IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 B          PIC 9(10).
01 C          PIC 9(10).
01 D          PIC 9(10).
01 E          PIC 9(10).
01 cards1.
   03 cards   PIC 9(10) VALUES ZERO OCCURS 13.
01 flg2       PIC 9(1) VALUE ZERO.
01 flg3       PIC 9(1) VALUE ZERO.
01 i          PIC 9(10) COMP.
01 ln         PIC X(30).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO A B C D E.
  ADD 1 TO cards(A).
  ADD 1 TO cards(B).
  ADD 1 TO cards(C).
  ADD 1 TO cards(D).
  ADD 1 TO cards(E).
  PERFORM VARYING i FROM 1 BY 1 UNTIL 13 < i
    IF 2 = cards(i) MOVE 1 TO flg2
    ELSE IF 3 = cards(i) MOVE 1 TO flg3
  END-PERFORM.
  IF 1 = flg2 AND flg3 DISPLAY "Yes" ELSE DISPLAY "No"
  STOP RUN.

