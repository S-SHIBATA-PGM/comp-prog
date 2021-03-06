IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 i          PIC 9(10) VALUE 1 COMP.
01 b          PIC X(1).
01 AC         PIC X(2) VALUE "AC".
01 TG         PIC X(2) VALUE "TG".
PROCEDURE DIVISION.
  ACCEPT b.
  PERFORM VARYING i from 1 BY 1 UNTIL 2 < i
    IF AC(i:1) = b
      DISPLAY TG(i:1)
      EXIT PERFORM
    ELSE
      IF TG(i:1) = b
        DISPLAY AC(i:1)
        EXIT PERFORM
      END-IF
    END-IF
  END-PERFORM.
  STOP RUN.
