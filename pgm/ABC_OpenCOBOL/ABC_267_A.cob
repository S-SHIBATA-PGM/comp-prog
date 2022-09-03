IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S1.
   03 S       PIC X(10) OCCURS 5 INDEXED six.
01 days       PIC 9(10).
01 ln         PIC X(30).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  MOVE "Monday" TO S(1).
  MOVE "Tuesday" TO S(2).
  MOVE "Wednesday" TO S(3).
  MOVE "Thursday" TO S(4).
  MOVE "Friday" TO S(5).
  SEARCH S
    WHEN FUNCTION TRIM(S(six)) = FUNCTION TRIM(ln)
      MOVE six TO days
  END-SEARCH.
  COMPUTE days = 5 - days + 1.
  MOVE days TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

