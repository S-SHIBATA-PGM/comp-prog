IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 a          PIC 9(10).
01 ad         PIC 9(10).
01 ans        PIC 9(10).
01 ar         PIC 9(10).
01 b          PIC 9(10).
01 bd         PIC 9(10).
01 br         PIC 9(10) VALUE 1.
01 i          PIC 9(10).
01 n          PIC 9(10).
01 nd         PIC 9(10).
01 nr         PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT a.
  ACCEPT b.
  ACCEPT n.
  DIVIDE n BY a GIVING nd REMAINDER nr.
  IF ZERO not = nr
    ADD 1 TO nd
  END-IF.
  PERFORM VARYING i FROM nd BY 1 UNTIL ZERO = br
      MULTIPLY a BY i GIVING ans
      DIVIDE ans BY B GIVING bd REMAINDER br
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

