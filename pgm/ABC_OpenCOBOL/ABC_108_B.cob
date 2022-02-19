IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(30).
01 a1         PIC S9(10).
01 a2         PIC S9(10).
01 a3         PIC S9(10).
01 a4         PIC S9(10).
01 ddx        PIC 9(10).
01 ddy        PIC 9(10).
01 dx         PIC S9(10).
01 dy         PIC S9(10).
01 tx         PIC S9(10).
01 ty         PIC S9(10).
01 x1         PIC S9(10).
01 y1         PIC S9(10).
01 x2         PIC S9(10).
01 y2         PIC S9(10).

01 A          PIC 9(10).
01 B          PIC 9(10).
01 ans        PIC X(30).
01 za1        PIC -(5)9.
01 za2        PIC -(5)9.
01 za3        PIC -(5)9.
01 za4        PIC -(5)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO x1 y1 x2 y2.
  COMPUTE dx = x2 - x1.
  COMPUTE dy = y2 - y1.
  MOVE dx TO ddx.
  MOVE dy TO ddy.

  IF ZERO <= dx AND ZERO <= dy
    COMPUTE a1 = x2 - ddy
    COMPUTE a2 = y2 + ddx
    COMPUTE a3 = a1 - ddx
    COMPUTE a4 = a2 - ddy
  ELSE
    IF dx < ZERO AND ZERO <= dy
      COMPUTE a1 = x2 - ddy
      COMPUTE a2 = y2 - ddx
      COMPUTE a3 = a1 + ddx
      COMPUTE a4 = a2 - ddy
    ELSE
      IF dx < ZERO AND dy < ZERO
        COMPUTE a1 = x2 + ddy
        COMPUTE a2 = y2 - ddx
        COMPUTE a3 = a1 + ddx
        COMPUTE a4 = a2 + ddy
      ELSE
        COMPUTE a1 = x2 + ddy
        COMPUTE a2 = y2 + ddx
        COMPUTE a3 = a1 - ddx
        COMPUTE a4 = a2 + ddy
      END-IF
    END-IF
  END-IF.

  MOVE a1 TO za1.
  MOVE a2 TO za2.
  MOVE a3 TO za3.
  MOVE a4 TO za4.

  INITIALIZE ln.

  STRING
  FUNCTION TRIM(za1)
  SPACE
  FUNCTION TRIM(za2)
  SPACE
  FUNCTION TRIM(za3)
  SPACE
  FUNCTION TRIM(za4)
  INTO ln.

  DISPLAY FUNCTION TRIM(ln).
  STOP RUN.
