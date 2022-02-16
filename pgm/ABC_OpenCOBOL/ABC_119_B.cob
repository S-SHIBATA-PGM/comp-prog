IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(30).
01 N          PIC 9(10).
01 u          PIC X(3).
01 x          PIC 9(10)V9(8).
01 ans        PIC 9(10)V9(8) VALUE ZERO.
01 zs         PIC Z(9)9.9(8).

PROCEDURE DIVISION.
  ACCEPT N.
  PERFORM N TIMES
    ACCEPT ln
    UNSTRING ln DELIMITED BY SPACE INTO x u
    IF "BTC" = u
      COMPUTE ans = ans + 380000.0 * x
    ELSE
      ADD x TO ans
    END-IF
  END-PERFORM
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.