IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 B          PIC 9(10).
01 C          PIC 9(10).
01 K          PIC 9(10).
01 ans        PIC S9(10).
01 ln         PIC X(43).
01 zs         PIC -(10)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO A B C K.
  IF K <= A
    COMPUTE ans = K
  ELSE
    IF K <= A + B
      COMPUTE ans = A
    ELSE
      COMPUTE ans = A - (K - A - B)
    END-IF
  END-IF.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

