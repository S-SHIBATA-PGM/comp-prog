IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 INF        PIC 9(10) VALUE 10007.
01 a          PIC 9(10).
01 a1         PIC 9(10) VALUE ZERO.
01 a2         PIC 9(10) VALUE ZERO.
01 a3         PIC 9(10) VALUE 1.
01 d          PIC 9(10).
01 i          PIC 9(10) COMP.
01 n          PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT n.
  IF 1 = n THEN
    MOVE a1 TO a
  ELSE
    IF 2 = n THEN
      MOVE a2 TO a
    ELSE
      IF 3 = n THEN
        MOVE a3 TO a
      ELSE
        PERFORM VARYING i FROM 4 BY 1 UNTIL n < i
          COMPUTE a = a1 + a2
          DIVIDE a BY INF GIVING d REMAINDER a
          ADD a3 TO a
          DIVIDE a BY INF GIVING d REMAINDER a
          MOVE a2 TO a1
          MOVE a3 TO a2
          MOVE a TO a3
        END-PERFORM
      END-IF
    END-IF
  END-IF.
  MOVE a TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

