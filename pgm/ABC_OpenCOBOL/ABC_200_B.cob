IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 K         PIC 9(10).
01 N         PIC 9(10).
01 ans       BINARY-DOUBLE.
01 d         BINARY-DOUBLE.
01 i         PIC 9(10) COMP.
01 ln        PIC X(30).
01 r         BINARY-DOUBLE.
01 zs        PIC Z(19)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO N K.
  MOVE N TO ans.
  PERFORM VARYING i FROM 1 BY 1 UNTIL K < i
    DIVIDE ans BY 200 GIVING d REMAINDER r
    IF ZERO < r COMPUTE ans = ans * 1000 + 200
    ELSE MOVE d TO ans
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

