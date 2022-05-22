IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S         PIC 9(10).
01 T         PIC 9(10).
01 a         PIC 9(10) COMP.
01 b         PIC 9(10) COMP.
01 c         PIC 9(10) COMP.
01 cnt       PIC 9(10) COMP.
01 ln        PIC X(40).
01 zs        PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO S T.
  PERFORM VARYING a FROM ZERO BY 1 UNTIL S < a
    PERFORM VARYING b FROM ZERO BY 1 UNTIL S < b
      PERFORM VARYING c FROM ZERO BY 1 UNTIL S < c
        IF a + b + c <= S AND a * b * c <= T
          ADD 1 TO cnt
        END-IF
      END-PERFORM
    END-PERFORM
  END-PERFORM.
  MOVE cnt TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

