IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 L          PIC 9(10) VALUE ZERO.
01 L1         PIC 9(10).
01 L2         PIC 9(10).
01 LR         PIC 9(10) VALUE ZERO.
01 R          PIC 9(10) VALUE ZERO.
01 R1         PIC 9(10).
01 R2         PIC 9(10).
01 ln         PIC X(30).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO L1 R1 L2 R2.
  IF L1 <= L2 AND L2 <= R1
    MOVE L2 TO L
    IF L1 <= R2 AND R2 <= R1
      MOVE R2 TO R
    ELSE
      MOVE R1 TO R
    END-IF
  ELSE
    IF L2 <= L1 AND L1 <= R2
      MOVE L1 TO L
      IF L2 <= R1 AND R1 <= R2
        MOVE R1 TO R
      ELSE
        MOVE R2 TO R
      END-IF
    END-IF
  END-IF.
  SUBTRACT L FROM R GIVING LR.
  MOVE LR TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

