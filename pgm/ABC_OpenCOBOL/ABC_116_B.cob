IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 s          PIC 9(10).
01 ret        PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT s.
  CALL "COLLATZ" USING BY CONTENT s
                       BY REFERENCE ret.
  MOVE ret TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
END PROGRAM PROGRAM_ID.

IDENTIFICATION DIVISION.
PROGRAM-ID. F.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 D          PIC 9(10).
01 R          PIC 9(10).

LINKAGE SECTION.
*> (IN)  ai
*> (OUT) ret
01 ai         PIC 9(10).
01 ret        PIC 9(10).

PROCEDURE DIVISION USING ai ret.
  INITIALIZE ret
  DIVIDE ai BY 2 GIVING D REMAINDER R
  IF ZERO = R
    MOVE D TO ret
  ELSE
    MULTIPLY 3 BY ai GIVING ret
    ADD 1 TO ret
  END-IF.
END PROGRAM F.

IDENTIFICATION DIVISION.
PROGRAM-ID. COLLATZ.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 numan      PIC 9(10).
01 flg        PIC 9(1).
01 aix        PIC 9(10) COMP.
01 an1.
   03 an11 OCCURS 100000 INDEXED BY XAN.
      05 an   PIC 9(10) VALUE ZERO.

LINKAGE SECTION.
*> (IN)  ai
*> (OUT) ret
01 ai         PIC 9(10).
01 ret        PIC 9(10).

PROCEDURE DIVISION USING ai ret.
  INITIALIZE ret
  SET XAN TO 1
  MOVE ai TO an(XAN)
  ADD 1 TO XAN
  ADD 1 TO numan
  PERFORM UNTIL 1 = flg
    CALL "F" USING BY CONTENT ai
                   BY REFERENCE ret
    MOVE ret TO ai
    MOVE ZERO TO flg
    PERFORM VARYING aix FROM 1 BY 1 UNTIL numan < aix
      IF ai = an(aix)
        MOVE numan TO ret
        ADD 1 TO ret
        MOVE 1 TO flg
        EXIT PERFORM
      END-IF
    END-PERFORM
    MOVE ai TO an(XAN)
    ADD 1 TO XAN
    ADD 1 TO numan
  END-PERFORM.
END PROGRAM COLLATZ.