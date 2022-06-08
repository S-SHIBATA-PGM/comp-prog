IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(3).
01 i          PIC 9(10) VALUE 1.
01 len        PIC 9(10).
01 pt         PIC S9(10) VALUE 1.
01 str        PIC X(6).

PROCEDURE DIVISION.
  ACCEPT S.
  MOVE FUNCTION STORED-CHAR-LENGTH(S) TO len.
  PERFORM VARYING i FROM 1 BY len UNTIL 6 < i
    MOVE S(1:len) TO str(i:len)
  END-PERFORM.
  DISPLAY FUNCTION TRIM(str)
  STOP RUN.
