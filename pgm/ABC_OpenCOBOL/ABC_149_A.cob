IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(100).
01 T          PIC X(100).
01 ans        PIC X(200).
01 ln         PIC X(300).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO S T.
  STRING FUNCTION TRIM(T) FUNCTION TRIM(S) INTO ans.
  DISPLAY FUNCTION TRIM(ans).
  STOP RUN.

