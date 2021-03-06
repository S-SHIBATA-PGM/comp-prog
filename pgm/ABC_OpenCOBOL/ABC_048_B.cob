IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 a          PIC 9(19).
01 b          PIC 9(19).
01 ln         PIC X(59).
01 q1         PIC 9(19).
01 q2         PIC 9(19).
01 r          PIC 9(19).
01 x          PIC 9(19).
01 zs         PIC Z(19)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO a b x.
  DIVIDE x INTO a GIVING q1 REMAINDER r.
  DIVIDE x INTO b GIVING q2.
  SUBTRACT q1 FROM q2.
  IF r = 0 THEN
    ADD 1 TO q2
  END-IF.
  MOVE q2 TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

