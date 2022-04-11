IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 INF        PIC 9(10) VALUE 1000000007.
01 a          PIC 9(10).
01 b          PIC 9(10).
01 c          PIC 9(10).
01 ln         PIC X(32).
01 x          PIC 9(20).
01 zs         PIC Z(21).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO a b c.
  MULTIPLY a BY b GIVING x.
  COMPUTE x = FUNCTION MOD(x, INF).
  MULTIPLY x BY c GIVING x.
  COMPUTE x = FUNCTION MOD(x, INF).
  MOVE x TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

