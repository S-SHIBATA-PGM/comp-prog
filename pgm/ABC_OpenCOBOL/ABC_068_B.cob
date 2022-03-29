IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(3).
01 R          PIC 9(3).
01 i          PIC 9(3).
01 j          PIC 9(3).
01 mxt        PIC 9(3).
01 mxv        PIC 9(3).
01 t          PIC 9(3).
01 tmp        PIC 9(3).
01 zs         PIC Z(4).

PROCEDURE DIVISION.
  ACCEPT N.
  MOVE 1 TO mxv.
  MOVE 0 TO mxt.
  PERFORM VARYING i FROM 2 BY 1 UNTIL N < i
    MOVE 0 TO t
    MOVE i TO tmp
    PERFORM VARYING j FROM 1 BY 1 UNTIL tmp = 0
      ADD 1 TO t
      DIVIDE 2 INTO tmp GIVING tmp REMAINDER R
      IF R = 1 THEN
        EXIT PERFORM
      END-IF
    END-PERFORM
    IF mxt < t THEN
      MOVE i TO mxv
      MOVE t TO mxt
    END-IF
  END-PERFORM.
  MOVE mxv TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

