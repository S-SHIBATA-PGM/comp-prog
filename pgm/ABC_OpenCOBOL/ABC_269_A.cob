IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 Takahashi  PIC X(9) VALUE "Takahashi".
01 a          PIC S9(10).
01 b          PIC S9(10).
01 c          PIC S9(10).
01 d          PIC S9(10).
01 ln         PIC X(30).
01 zs         PIC -(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO a b c d.
  COMPUTE zs = (a + b) * (c - d).
  DISPLAY FUNCTION TRIM(zs).
  DISPLAY Takahashi.
  STOP RUN.

