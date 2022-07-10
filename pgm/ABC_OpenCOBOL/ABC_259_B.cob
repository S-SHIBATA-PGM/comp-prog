IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 a          PIC S9(10).
01 b          PIC S9(10).
01 d          PIC 9(10).
01 ln         PIC X(30).
01 offset     FLOAT-LONG.
01 diff       FLOAT-LONG.
01 pi         FLOAT-LONG VALUE 3.141592653.
01 zx         PIC -(9)9.9(18).
01 zy         PIC -(9)9.9(18).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO a b d.
  IF ZERO <= b AND ZERO = a COMPUTE offset = 0.5 * pi
  ELSE IF b < ZERO AND ZERO = a COMPUTE offset = 1.5 * pi
  ELSE COMPUTE offset = FUNCTION ATAN(b / FUNCTION ABS(a)).
  IF a < ZERO COMPUTE offset = pi - offset.
  COMPUTE zx = ((a ** 2 + b ** 2) ** 0.5)
  * FUNCTION COS(offset + d * pi / 180).
  COMPUTE zy = ((a ** 2 + b ** 2) ** 0.5)
  * FUNCTION SIN(offset + d * pi / 180).
  DISPLAY FUNCTION TRIM(zx) SPACE FUNCTION TRIM(zy).
  STOP RUN.

