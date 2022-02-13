IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 a          PIC 9(10).
01 b          PIC 9(10).
01 c          PIC 9(10).
01 d          PIC 9(10).
01 e          PIC 9(10).
01 k          PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT a.
  ACCEPT b.
  ACCEPT c.
  ACCEPT d.
  ACCEPT e.
  ACCEPT k.
  IF e - a <= k
    DISPLAY "Yay!"
  ELSE
    DISPLAY ":("
  END-IF.
  STOP RUN.
