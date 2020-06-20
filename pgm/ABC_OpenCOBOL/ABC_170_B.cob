*> C + T = X
*> 2 * C + 4 * T = Y
*> T = X - C
*> 2 * C + 4 * (X - C) = Y
*> - 2 * C = Y - 4 * X
*> C = 2 * X - Y / 2
*> T = -X + Y / 2
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(30).
01 X          PIC 9(10).
01 Y          PIC 9(10).
01 C          PIC S9(10).
01 T          PIC S9(10).
01 ans        PIC X(30).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO X Y.
  COMPUTE C = 2 * X - Y / 2.
  COMPUTE T = -X + Y / 2.
  IF ZERO <= C AND ZERO <= T AND C + T = X AND 2 * C + 4 * T = Y THEN
    DISPLAY "Yes"
  ELSE
    DISPLAY "No"
  END-IF.
  STOP RUN.
