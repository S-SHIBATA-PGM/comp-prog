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
01 N          PIC 9(10).
01 direction  PIC X(1) VALUE "E".
01 i          PIC 9(10) COMP.
01 x          PIC S9(10) COMP.
01 y          PIC S9(10) COMP.
01 zsx        PIC -(9)9.
01 zsy        PIC -(9)9.

PROCEDURE DIVISION.
  OPEN INPUT SYSIN.
  READ SYSIN INTO N.
  READ SYSIN.
  CLOSE SYSIN.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    IF "R" = INDATA(i:1)
      IF "E" = direction
        MOVE "S" TO direction
      ELSE
        IF "S" = direction MOVE "W" TO direction
        ELSE
         IF "W" = direction MOVE "N" TO direction
         ELSE MOVE "E" TO direction
         END-IF
        END-IF
      END-IF
    ELSE
      IF "E" = direction
        ADD 1 TO x
      ELSE
        IF "S" = direction ADD -1 TO y
        ELSE
          IF "W" = direction ADD -1 TO x
          ELSE ADD 1 TO y
          END-IF
        END-IF
      END-IF
    END-IF
  END-PERFORM.
  MOVE x TO zsx.
  MOVE y TO zsy.
  DISPLAY FUNCTION TRIM(zsx) SPACE FUNCTION TRIM(zsy).
  STOP RUN.

