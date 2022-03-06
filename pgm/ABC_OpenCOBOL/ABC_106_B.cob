IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(400).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 cur        PIC 9(10) VALUE 1 COMP.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 ans        PIC 9(10).
01 zs         PIC Z(9)9.
01 N          PIC 9(10).
01 cnt        PIC 9(10).
01 d          PIC 9(10).
01 m          PIC 9(10).
01 tmp        PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT N.

  MOVE ZERO TO cnt.

  PERFORM VARYING i FROM 1 BY 2 UNTIL N < i
    MOVE ZERO TO tmp
    PERFORM VARYING j FROM 1 BY 1 UNTIL i < j
      DIVIDE j INTO i GIVING D REMAINDER m
      IF ZERO = m
        ADD 1 TO tmp
      END-IF
    END-PERFORM
    IF 8 = tmp
      ADD 1 TO cnt
    END-IF
  END-PERFORM
  MOVE cnt TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

