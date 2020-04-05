IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln             PIC X(400).
01 maxlen         PIC 9(10) VALUE 100.
01 cur            PIC 9(10) VALUE 1.
01 i              PIC 9(10) VALUE 1.
01 j              PIC 9(10).
01 len            PIC 9(10).
01 ans            PIC S9(10).
01 zs             PIC Z(9)9.
01 N              PIC 9(10).
01 K              PIC 9(10).
01 M              PIC 9(10).
01 Ai             PIC 9(10).
01 accum          PIC 9(10) VALUE ZERO.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO N K M.
  ACCEPT ln.
  COMPUTE maxlen = N - 1.
  PERFORM maxlen TIMES
      PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
      END-PERFORM
      COMPUTE len = j - cur
      MOVE ln(cur:len) TO Ai
      ADD Ai TO accum
      COMPUTE cur = j + 1
      ADD 1 TO i
  END-PERFORM.
  COMPUTE ans = N * M - accum.
  IF ans < ZERO
      DISPLAY ZERO
  ELSE
      IF K < ans
          DISPLAY -1
      ELSE
          MOVE ans TO zs
          DISPLAY FUNCTION TRIM(zs)
      END-IF
  END-IF.
  STOP RUN.
