IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD SYSIN.
01 INDATA     PIC X(1100000).

WORKING-STORAGE SECTION.
01 INP     PIC X(1100000).
01 N       PIC 9(6).
01 NM      PIC X(17).
01 M       PIC 9(10).
01 X_MAX   PIC 9(10) VALUE 9999999999.
01 X1.
   03 X    PIC 9(10) OCCURS 100000 DEPENDING maxlen.
01 Y1.
   03 YNUM PIC 9(6) VALUE ZERO.
   03 Y11 OCCURS 100000.
      05 Y PIC 9(10).
      05 YCNT PIC 9(6) VALUE ZERO.
01 ans     PIC X(18).
01 bk      PIC 9(10).
01 cur     PIC 9(7) VALUE 1.
01 flg     PIC 9(1).
01 i       PIC 9(7) VALUE 1.
01 j       PIC 9(7).
01 len     PIC 9(7).
01 maxlen  PIC 9(7).
01 r       PIC 9(10).
01 sm      PIC 9(18).
01 tmp     PIC 9(10).
01 xd      PIC 9(15).
01 xr      PIC 9(10).
01 zs      PIC Z(18)9.

PROCEDURE DIVISION.
  ACCEPT NM.
  UNSTRING NM
  DELIMITED BY SPACE
  INTO N M.
  OPEN INPUT SYSIN.
  READ SYSIN INTO INP.
  CLOSE SYSIN.
  MOVE N TO maxlen.
  MOVE ZERO TO sm.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1
      UNTIL INP(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE INP(cur:len) TO tmp
    ADD tmp TO sm
    DIVIDE M INTO sm GIVING xd REMAINDER xr
    MOVE xr TO X(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  SORT X ASCENDING X.
  MOVE X_MAX TO bk.
  PERFORM VARYING i FROM 1 BY 1 UNTIL maxlen < i
  IF bk = X(i) THEN
    ADD 1 TO YCNT(YNUM)
  ELSE
    MOVE X(i) TO bk
    ADD 1 TO YNUM
    MOVE X(i) TO Y(YNUM)
    ADD 1 TO YCNT(YNUM)
  END-IF
  END-PERFORM.
  MOVE ZERO TO sm.
  PERFORM VARYING i FROM 1 BY 1 UNTIL YNUM < i
*> pair
  COMPUTE sm = sm + YCNT(i) * (YCNT(i) - 1) / 2
*> alone
    IF ZERO = Y(i)
      COMPUTE sm = sm + YCNT(i)
    END-IF
  END-PERFORM.
  MOVE sm TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

