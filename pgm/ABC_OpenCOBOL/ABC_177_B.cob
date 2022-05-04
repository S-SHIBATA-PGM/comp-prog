IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(1000).
01 T          PIC X(1000).
01 i          PIC 9(10) COMP.
01 j          PIC 9(10) COMP.
01 ans        PIC 9(10) VALUE 1000.
01 cur        PIC 9(10) COMP.
01 flg        PIC 9(1).
01 ln         PIC 9(10).
01 ls         PIC 9(10).
01 lt         PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT S.
  ACCEPT T.
  COMPUTE ls = FUNCTION STORED-CHAR-LENGTH(S).
  COMPUTE lt = FUNCTION STORED-CHAR-LENGTH(T).
  PERFORM VARYING i FROM 1 BY 1 UNTIL ls < i
    MOVE ZERO TO cur
    MOVE ZERO TO flg
    PERFORM VARYING j FROM i BY 1
    UNTIL ls < i + lt - 1 OR lt < j - i + 1
      MOVE 1 TO flg
      IF S(j:1) NOT = T(j - i + 1:1) THEN
        ADD 1 TO cur
      END-IF
    END-PERFORM
    IF ZERO < flg THEN
      COMPUTE ans = FUNCTION MIN(ans cur)
    END-IF
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

