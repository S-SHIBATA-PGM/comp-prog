IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 B          PIC 9(10).
01 C          PIC 9(10).
01 D          PIC 9(10).
01 E          PIC 9(10).
01 abcde1.
   03 abcde   PIC 9(1) OCCURS 101.
01 i          PIC 9(10) COMP.
01 ln         PIC X(30).
01 num        PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO A B C D E.
  ADD 1 TO abcde(A + 1).
  ADD 1 TO abcde(B + 1).
  ADD 1 TO abcde(C + 1).
  ADD 1 TO abcde(D + 1).
  ADD 1 TO abcde(E + 1).
  PERFORM VARYING i FROM 1 BY 1 UNTIL 101 < i
    IF ZERO < abcde(i) ADD 1 TO num
  END-PERFORM.
  MOVE num TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

