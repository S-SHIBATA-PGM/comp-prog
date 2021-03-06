IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(100) VALUE SPACE.
01 REDEFINES S.
   03 SC      PIC X OCCURS 100.
01 SLEN       PIC 9(3).
01 T          PIC X(100) VALUE SPACE.
01 REDEFINES T.
   05 TC      PIC X OCCURS 100.
01 bk         PIC X(1).
01 flg        PIC 9(1).
01 i          PIC 9(3).
01 j          PIC 9(3).
01 tmp        PIC X(1).

PROCEDURE DIVISION.
  ACCEPT S.
  ACCEPT T.
  COMPUTE SLEN = FUNCTION STORED-CHAR-LENGTH(S).
  MOVE ZERO TO flg.
  IF S = T THEN
    MOVE 1 TO flg
  ELSE
    PERFORM VARYING i FROM 1 BY 1 UNTIL SLEN <= i
      MOVE SC(1) TO bk
      PERFORM VARYING j FROM 1 BY 1 UNTIL SLEN <= j
        MOVE SC(j + 1) TO tmp
        MOVE bk TO SC(j + 1)
        MOVE tmp TO bk
      END-PERFORM
      MOVE bk TO SC(1)
      IF S = T THEN
        MOVE 1 TO flg
        EXIT PERFORM
      END-IF
    END-PERFORM
  END-IF.
  IF flg = 1 THEN
    DISPLAY "Yes"
  ELSE
    DISPLAY "No"
  END-IF.
  STOP RUN.

