IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 LN             PIC X(400).
01 maxlen         PIC 9(3) VALUE 100.
01 cur            PIC 9(10) VALUE 1.
01 i              PIC 9(18) VALUE 1.
01 j              PIC 9(18).
01 len            PIC 9(10).
01 N              PIC 9(3).
01 K              PIC 9(3).
01 M              PIC 9(3).
01 A              PIC 9(3).
01 accum          PIC 9(5) VALUE 0.
01 num            PIC S9(5) VALUE 0.
01 ans            PIC Z(2)9.

PROCEDURE DIVISION.
  ACCEPT LN.
  UNSTRING LN DELIMITED BY SPACE INTO N K M.
  ACCEPT LN.
  PERFORM maxlen TIMES
      PERFORM VARYING j FROM cur BY 1 UNTIL LN(j:1) = SPACE
      END-PERFORM
      COMPUTE len = j - cur
      MOVE LN(cur:len) TO A
      ADD A TO accum
      COMPUTE cur = j + 1
      ADD 1 TO i
  END-PERFORM.
  COMPUTE num = N * M - accum.
  IF num < ZERO
      DISPLAY 0
  ELSE
      IF num <= K
          MOVE num TO ans
          DISPLAY ans
      ELSE
          DISPLAY -1
      END-IF
  END-IF.
  STOP RUN.
