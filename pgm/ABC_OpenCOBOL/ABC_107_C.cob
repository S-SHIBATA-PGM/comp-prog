IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
   SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD SYSIN.
   01 INDATA  PIC X(1100000).

WORKING-STORAGE SECTION.
01 ln         PIC X(1100000).
01 INF        PIC 9(10) VALUE 1000000007.
01 N          PIC 9(10).
01 K          PIC 9(10).
01 maxlen     PIC 9(10).
01 cur        PIC 9(10) VALUE 1.
01 i          PIC 9(10) VALUE 1.
01 j          PIC 9(10).
01 len        PIC 9(10).
01 tmp        PIC 9(10).
01 x1.
   03 x11 OCCURS 100000 DEPENDING ON maxlen INDEXED XX1 XX2.
      05 x    PIC S9(10).
      05 y    PIC 9(10).
01 t          PIC 9(10).
01 flg        PIC 9(1).
01 ans        PIC 9(10).
01 ZS         PIC Z(9)9.

PROCEDURE DIVISION.
  OPEN INPUT SYSIN.
  READ SYSIN INTO ln.
  UNSTRING ln DELIMITED BY SPACE INTO N K.
  READ SYSIN INTO ln.
  CLOSE SYSIN.

  MOVE N TO maxlen.

  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    SET XX1 TO i
    IF ln(cur:1) NOT = "-"
        MOVE ln(cur:len) TO x(XX1)
        MOVE x(XX1) TO y(XX1)
    ELSE
        ADD 1 TO cur
        SUBTRACT 1 FROM len
        MOVE ln(cur:len) TO x(XX1)
        COMPUTE x(XX1) = -x(XX1)
        MOVE x(XX1) TO y(XX1)
    END-IF
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.

  MOVE ZERO TO flg.

  SET XX1 TO 1.
  SET XX2 TO K.

  IF ZERO <= x(XX1)
    MOVE y(XX2) TO ans
    MOVE 1 TO flg
  END-IF.

  COMPUTE tmp = N - K + 1.

  SET XX1 TO N.
  SET XX2 TO tmp.

  IF x(XX1) <= ZERO
    MOVE y(XX2) TO ans
    MOVE 1 TO flg
  END-IF.

  IF ZERO = flg
    MOVE INF TO ans
    PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
      COMPUTE tmp = i + K - 1
      IF N < tmp
        EXIT PERFORM
      END-IF
      SET XX1 TO i
      SET XX2 TO tmp

      IF x(XX1) <= ZERO
        IF ZERO <= x(XX2)
          IF y(XX1) <= y(XX2)
            COMPUTE t = y(XX1) * 2 + y(XX2)
          ELSE
            COMPUTE t = y(XX1) + y(XX2) * 2
          END-IF
          IF t < ans
            MOVE t TO ans
          END-IF
        ELSE
          COMPUTE tmp = i + K
          SET XX2 TO tmp
          IF tmp <= N AND ZERO < x(XX2)
            MOVE y(XX1) TO t
            IF t < ans
              MOVE t TO ans
            END-IF
          END-IF
        END-IF
      ELSE
        COMPUTE tmp = i - 1
        SET XX1 TO tmp
        IF x(XX1) < ZERO
          MOVE y(XX2) TO t
          IF t < ans
            MOVE t TO ans
          END-IF
        END-IF
      END-IF
    END-PERFORM
  END-IF

  MOVE ans TO ZS.
  DISPLAY FUNCTION TRIM(ZS).
  STOP RUN.

