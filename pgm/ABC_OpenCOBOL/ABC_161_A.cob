IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln             PIC X(30).
01 X              PIC 9(10).
01 Y              PIC 9(10).
01 Z              PIC 9(10).
01 ans            PIC X(30).
01 zx             PIC Z(9)9.
01 zy             PIC Z(9)9.
01 zz             PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO X Y Z.
  MOVE X TO zx.
  MOVE Y TO zy.
  MOVE Z TO zz.
  STRING
      FUNCTION TRIM(zz)
      SPACE
      FUNCTION TRIM(zx)
      SPACE
      FUNCTION TRIM(zy)
  INTO ans.
  DISPLAY FUNCTION TRIM(ans).
  STOP RUN.
