IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 len        PIC 9(10) VALUE 3.
01 S          PIC X(3).
01 T          PIC X(3).
01 i          PIC 9(10) VALUE ZERO COMP.
01 ans        PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT S.
  ACCEPT T.
  PERFORM VARYING i FROM 1 BY 1 UNTIL len < i
    IF S(i:1) = T(i:1)
      ADD 1 TO ans
    END-IF
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.