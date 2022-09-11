IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(100).
01 T          PIC X(100).
01 len        PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT S.
  ACCEPT T.
  MOVE FUNCTION STORED-CHAR-LENGTH(S) TO len.
  IF S(1:len) = T(1:len) DISPLAY "Yes" ELSE DISPLAY "No".
  STOP RUN.

