IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(4).

PROCEDURE DIVISION.
  ACCEPT S.
  IF (S(1:2) < "01" OR "12" < S(1:2))
  AND (S(3:2) < "01" OR "12" < S(3:2))
    DISPLAY "NA"
  ELSE
    IF (S(1:2) < "01" OR "12" < S(1:2))
    AND ("01" <= S(3:2) AND S(3:2) <= "12")
      DISPLAY "YYMM"
    ELSE
      IF ("01" <= S(1:2) AND S(1:2) <= "12")
      AND (S(3:2) < "01" OR "12" < S(3:2))
        DISPLAY "MMYY"
      ELSE
        DISPLAY "AMBIGUOUS"
  END-IF.
  STOP RUN.
