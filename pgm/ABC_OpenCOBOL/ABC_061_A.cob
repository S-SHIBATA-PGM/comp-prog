IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC S9(3).
01 B          PIC S9(3).
01 C          PIC S9(3).
01 ln         PIC X(14).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO A B C.
  IF A <= C AND C <= B THEN
    DISPLAY "Yes"
  ELSE
    DISPLAY "No"
  END-IF.
  STOP RUN.

