IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(3).
01 AB         PIC 9(5).
01 B          PIC 9(3).
01 BC         PIC 9(5).
01 C          PIC 9(3).
01 CA         PIC 9(5).
01 ln         PIC X(11).
01 square     PIC 9(5).
01 zs         PIC Z(6).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO A B C.
  MULTIPLY A BY B GIVING AB.
  MULTIPLY B BY C GIVING BC.
  MULTIPLY C BY A GIVING CA.
  MOVE ZERO TO square.
  ADD AB TO square.
  ADD BC TO square.
  ADD CA TO square.
  MULTIPLY 2 BY square.
  MOVE square TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

