IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD SYSIN.
01 INDATA     PIC X(2200007).

WORKING-STORAGE SECTION.
01 L111.
   03 L11     OCCURS 200000 INDEXED IXL.
      05 L    PIC 9(6).
      05 cnt  PIC 9(1) VALUE 1.
01 N          PIC 9(10).
01 a1.
   03 a       PIC 9(10) OCCURS 200000
              DEPENDING N INDEXED IXA.
01 aix        PIC 9(10) VALUE 1 COMP.
01 ans        PIC 9(10) VALUE ZERO.
01 cur        PIC 9(10).
01 flg        PIC 9(1).
01 i          PIC 9(10) COMP.
01 j          PIC 9(10) COMP.
01 k          PIC 9(10) COMP.
01 pt         PIC S9(10).
01 x          PIC 9(10).
01 xfm        PIC 9(10) VALUE 1.
01 xto        PIC 9(10).
01 y          PIC 9(10).
01 yfm        PIC 9(10) VALUE 1.
01 yto        PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  OPEN INPUT SYSIN.
  READ SYSIN INTO N.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    READ SYSIN
    MOVE 1 TO pt
    UNSTRING INDATA DELIMITED SPACE INTO L(i) POINTER pt
    PERFORM VARYING j FROM 1 BY 1 UNTIL L(i) < j
      UNSTRING INDATA DELIMITED SPACE INTO a(aix) POINTER pt
      ADD 1 TO aix
    END-PERFORM
  END-PERFORM.
  CLOSE SYSIN.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    COMPUTE xto = xfm + L(i) - 1
    COMPUTE yfm = xto + 1
    COMPUTE cur = i + 1
    PERFORM VARYING j FROM cur BY 1 UNTIL N < j
      COMPUTE yto = yfm + L(j) - 1
      IF ZERO NOT = cnt(i) AND cnt(j)
        IF L(i) = L(j)
          MOVE xfm TO x
          MOVE 1 TO flg
          PERFORM VARYING y FROM yfm BY 1 UNTIL yto < y
            IF a(x) NOT = a(y) MOVE ZERO TO flg EXIT PERFORM END-IF
            ADD 1 TO x
          END-PERFORM
          IF 1 = flg
            MOVE ZERO TO cnt(j)
          END-IF
        END-IF
      END-IF
      COMPUTE yfm = yfm + L(j)
    END-PERFORM
    COMPUTE xfm = xto + 1
  END-PERFORM.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    ADD cnt(i) TO ans
  END-PERFORM
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

