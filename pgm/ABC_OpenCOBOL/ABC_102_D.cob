IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD SYSIN.
01 INDATA     PIC X(2200000).

WORKING-STORAGE SECTION.
01 INF        PIC 9(15) VALUE 999999999999999.
01 INP        PIC X(2200000).
01 N          PIC 9(6).
01 maxlen     PIC 9(6).
01 cur        PIC 9(7) VALUE 1.
01 len        PIC 9(7).
01 i          PIC 9(6) VALUE 1 BINARY.
01 j          PIC 9(7) BINARY.
01 ret        PIC 9(6).
01 li         PIC 9(6).
01 ri         PIC 9(6).
01 lv         PIC 9(15).
01 rv         PIC 9(15).
01 st         PIC 9(6).
01 ed         PIC 9(6).
01 bk         PIC 9(6).
01 ms         PIC 9(6).
01 ans        PIC X(15).
01 x          PIC 9(10).
01 sm         PIC 9(15).
01 tmp        PIC 9(15).
01 tmp2       PIC 9(15).
01 mx         PIC 9(15).
01 mn         PIC 9(15).
01 flg        PIC 9(1).
01 P          PIC 9(15).
01 Q          PIC 9(15).
01 R          PIC 9(15).
01 S          PIC 9(15).
01 zs         PIC Z(15)9.
01 A1.
   03 A11 OCCURS 200000 DEPENDING ON maxlen INDEXED AX1 AX2.
      05 A    PIC 9(15).

PROCEDURE DIVISION.
  ACCEPT N.
  OPEN INPUT SYSIN.
  READ SYSIN INTO INP.
  CLOSE SYSIN.
  MOVE N TO maxlen.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL INP(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE INP(cur:len) TO x
    ADD x TO tmp
    SET AX1 TO i
    MOVE tmp TO A(AX1)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  MOVE 1 TO li.
  MOVE 1 TO ri.
  MOVE INF TO sm.
  PERFORM VARYING i FROM 2 BY 1 UNTIL N - 1 <= i
    COMPUTE st = 1
    COMPUTE ed = i
    COMPUTE bk = li
    PERFORM F
    MOVE ret TO li
    IF ri < i + 1
      COMPUTE ri = i + 1
    END-IF
    COMPUTE st = i + 1
    COMPUTE ed = N
    COMPUTE bk = ri
    PERFORM F
    MOVE ret TO ri
    SET AX1 TO li
    COMPUTE P = A(AX1)
    SET AX1 TO i
    COMPUTE Q = A(AX1) - P
    SET AX1 TO ri
    SET AX2 TO i
    COMPUTE R = A(AX1) - A(AX2)
    SET AX2 TO N
    COMPUTE S = A(AX2) - A(AX1)
    COMPUTE mx = FUNCTION MAX(P, Q, R, S)
    COMPUTE mn = FUNCTION MIN(P, Q, R, S)
    IF mx - mn < sm
      COMPUTE sm = mx - mn
    END-IF
  END-PERFORM.
  MOVE sm TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

F SECTION.
  MOVE INF TO tmp
  MOVE 1 TO ret
  MOVE ZERO TO flg
  PERFORM VARYING j FROM bk BY 1 UNTIL ed < j
    SET AX1 TO j
    COMPUTE lv = A(AX1)
    IF st NOT = 1
      COMPUTE ms = st - 1
      SET AX2 TO ms
      COMPUTE lv = A(AX1) - A(AX2)
    END-IF
    SET AX2 TO ed
    COMPUTE rv = A(AX2) - A(AX1)
    IF lv < rv
      COMPUTE tmp2 = rv - lv
    ELSE
      COMPUTE tmp2 = lv - rv
    END-IF
    IF tmp2 < tmp
      COMPUTE tmp = tmp2
      COMPUTE ret = j
      MOVE 1 TO flg
    ELSE
      IF 1 = flg
        EXIT PERFORM
      END-IF
    END-IF
  END-PERFORM.

