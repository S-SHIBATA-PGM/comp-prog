IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(30).
01 dx         PIC S9(10).
01 dy         PIC S9(10).
01 dz         PIC S9(10).
01 x1         PIC S9(10).
01 y1         PIC S9(10).
01 x2         PIC S9(10).
01 y2         PIC S9(10).
01 x3         PIC S9(10).
01 y3         PIC S9(10).
01 x4         PIC S9(10).
01 y4         PIC S9(10).
01 zx3        PIC -(9)9.
01 zy3        PIC -(9)9.
01 zx4        PIC -(9)9.
01 zy4        PIC -(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO x1 y1 x2 y2.
  COMPUTE dx = x2 - x1.
  COMPUTE dy = y2 - y1.
  COMPUTE dz = -dy.
  MOVE dx TO dy.
  MOVE dz TO dx.
  COMPUTE x3 = x2 + dx.
  COMPUTE y3 = y2 + dy.
  COMPUTE dz = -dy.
  MOVE dx TO dy.
  MOVE dz TO dx.
  COMPUTE x4 = x3 + dx.
  COMPUTE y4 = y3 + dy.
  MOVE x3 TO zx3.
  MOVE y3 TO zy3.
  MOVE x4 TO zx4.
  MOVE y4 TO zy4.

  INITIALIZE ln.

  STRING
  FUNCTION TRIM(zx3)
  SPACE
  FUNCTION TRIM(zy3)
  SPACE
  FUNCTION TRIM(zx4)
  SPACE
  FUNCTION TRIM(zy4)
  INTO ln.

  DISPLAY FUNCTION TRIM(ln).
  STOP RUN.
