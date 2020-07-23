IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(10).
01 i          PIC 9(10) COMP.
01 qt         PIC 9(10).
01 rm         PIC 9(10).
01 ans        PIC 9(10) VALUE ZERO.
01 num        PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT N.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    COMPUTE num = FUNCTION LOG10(i)
    ADD 1 TO num
    DIVIDE num BY 2 GIVING qt REMAINDER rm
    IF rm = 1
      ADD 1 TO ans
    END-IF
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
