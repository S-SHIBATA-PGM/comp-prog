IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A1.
   03 A       PIC X(1000) OCCURS 1000 DEPENDING N.
01 N          PIC 9(10).
01 flg        PIC 9(10) VALUE ZERO.
01 i          PIC 9(10) COMP.
01 j          PIC 9(10) COMP.

PROCEDURE DIVISION.
  ACCEPT N.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    ACCEPT A(i)
  END-PERFORM.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    ADD 1 TO i GIVING j
    PERFORM VARYING j FROM j BY 1 UNTIL N < j
      IF "W" = A(i)(j:1) AND "L" <> A(j)(i:1)
        MOVE 1 TO flg
      END-IF
      IF "L" = A(i)(j:1) AND "W" <> A(j)(i:1)
        MOVE 1 TO flg
      END-IF
      IF "D" = A(i)(j:1) AND "D" <> A(j)(i:1)
        MOVE 1 TO flg
      END-IF
      IF ZERO <> flg EXIT PERFORM
    END-PERFORM
    IF ZERO <> flg EXIT PERFORM
  END-PERFORM.
  IF ZERO = flg DISPLAY "correct"
  ELSE DISPLAY "incorrect".
  STOP RUN.

