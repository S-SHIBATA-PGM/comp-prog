IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD SYSIN.
01 INDATA     PIC X(100000).

WORKING-STORAGE SECTION.
01 ABC        PIC X(3) VALUE "ABC".
01 INF        PIC 9(10) VALUE 1000000007.
01 S          PIC X(100000).
01 ans        PIC X(10).
01 dp1.
   03 dp11 OCCURS 100001.
      05 dp PIC 9(20) OCCURS 4.
01 i          PIC 9(6) BINARY.
01 j          PIC 9(1) BINARY.
01 len        PIC 9(6).
01 m1         PIC 9(1).
01 m2         PIC 9(1).
01 zs         PIC Z(10)9.

PROCEDURE DIVISION.
  OPEN INPUT SYSIN.
  READ SYSIN INTO S.
  CLOSE SYSIN.
  COMPUTE len = FUNCTION STORED-CHAR-LENGTH(S).
*> ○ 0
  MOVE ZERO TO dp(len + 1 1).
*> ○ 1
  MOVE ZERO TO dp(len + 1 2).
*> ○ 2
  MOVE ZERO TO dp(len + 1 3).
*> ○ 3
  MOVE 1 TO dp(len + 1 4).

  PERFORM VARYING i FROM len BY -1 UNTIL i <= ZERO
    PERFORM VARYING j FROM 4 BY -1 UNTIL j <= ZERO
*> ○ 3
      IF j = 4
        MOVE 1 TO m1
        IF '?' = S(i:1)
          MOVE 3 TO m1
        END-IF
          COMPUTE dp(i j) = m1 * dp(i + 1 j)
*> ○ 3 以外
      ELSE
        MOVE 1 TO m2
*> ?
        IF S(i:1) = '?'
          MOVE 3 TO m1
*> ? 以外
        ELSE
          MOVE 1 TO m1
          IF ABC(j:1) NOT = S(i:1)
            MOVE ZERO TO m2
          END-IF
        END-IF
        COMPUTE dp(i j) = m1 * dp(i + 1 j) + m2 * dp(i + 1 j + 1)
      END-IF
      COMPUTE dp(i j) = FUNCTION MOD(dp(i j), INF)
    END-PERFORM
  END-PERFORM.

  MOVE dp(1 1) TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

