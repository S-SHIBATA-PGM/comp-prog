IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT A.
  MOVE A TO zs.
  IF 90 <= A
    DISPLAY "expert"
    STOP RUN
  ELSE IF 70 <= A
    SUBTRACT A FROM 90 GIVING zs
  ELSE IF 40 <= A
    SUBTRACT A FROM 70 GIVING zs
  ELSE
    SUBTRACT A FROM 40 GIVING zs
  END-IF.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

