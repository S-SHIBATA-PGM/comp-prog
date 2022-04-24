IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 B          PIC 9(10).
01 C          PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT A.
  ACCEPT B.
  ACCEPT C.
  IF A < B AND B < C THEN
    DISPLAY 3
    DISPLAY 2
    DISPLAY 1
  ELSE
    IF B < A AND A < C THEN
      DISPLAY 2
      DISPLAY 3
      DISPLAY 1
    ELSE
      IF A < C AND C < B THEN
        DISPLAY 3
        DISPLAY 1
        DISPLAY 2
      ELSE
        IF C < A AND A < B THEN
          DISPLAY 2
          DISPLAY 1
          DISPLAY 3
        ELSE
          IF B < C AND C < A THEN
            DISPLAY 1
            DISPLAY 3
            DISPLAY 2
          ELSE
            DISPLAY 1
            DISPLAY 2
            DISPLAY 3
          END-IF
        END-IF
      END-IF
    END-IF
  END-IF.
  STOP RUN.

