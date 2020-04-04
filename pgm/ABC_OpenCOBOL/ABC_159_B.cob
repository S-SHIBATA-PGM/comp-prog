IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S              PIC X(100).
01 X              PIC X(100).
01 cur            PIC X(100).
01 pre            PIC X(100).
01 n              PIC 9(10).
01 m              PIC 9(10).
01 i              PIC 9(10).


PROCEDURE DIVISION.
  ACCEPT S.
  COMPUTE n = FUNCTION STORED-CHAR-LENGTH(S).
  MOVE n TO m.
  PERFORM REVERSESTR.
  IF S = cur
      MOVE ALL SPACE TO cur
      DIVIDE n BY 2 GIVING m
      MOVE S(1 : m) TO X
      PERFORM REVERSESTR
      IF X = cur
          DISPLAY "Yes"
      ELSE
          DISPLAY "No"
      END-IF
  ELSE
      DISPLAY "No"
  END-IF.
  STOP RUN.

REVERSESTR SECTION.
  PERFORM VARYING i FROM 1 BY 1 UNTIL m < i
      MOVE S(m - i + 1 : 1) TO cur(i : 1)
  END-PERFORM.
