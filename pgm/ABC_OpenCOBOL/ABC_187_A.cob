IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A1.
   03 A11    PIC X(3).
   03 A111   REDEFINES A11.
      05 A   PIC 9(1) OCCURS 3.
01 B1.
   03 B11    PIC X(3).
   03 B111   REDEFINES B11.
      05 B   PIC 9(1) OCCURS 3.
01 ans       PIC Z(9)9.
01 ln        PIC X(30).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO A11 B11.
  IF B(1) + B(2) + B(3) < A(1) + A(2) + A(3) THEN
    COMPUTE ans = A(1) + A(2) + A(3)
  ELSE
    COMPUTE ans = B(1) + B(2) + B(3)
  END-IF.
  DISPLAY FUNCTION TRIM(ans).
  STOP RUN.

