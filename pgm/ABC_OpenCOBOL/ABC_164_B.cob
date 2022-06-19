IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 B          PIC 9(10).
01 C          PIC 9(10).
01 D          PIC 9(10).
01 ak         PIC 9(10).
01 ln         PIC X(15).
01 tk         PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO A B C D.
  COMPUTE tk = (C + B - 1) / B.
  COMPUTE ak = (A + D - 1) / D.
  IF tk <= ak
    DISPLAY "Yes"
  ELSE
    DISPLAY "No"
  END-IF.
  STOP RUN.

