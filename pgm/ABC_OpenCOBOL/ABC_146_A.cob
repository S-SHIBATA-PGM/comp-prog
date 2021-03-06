*> REF ABC 170 A
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(3).
01 ans        PIC 9(10).
01 n          PIC 9.
01 w1         PIC X(21) VALUE "SUNMONTUEWEDTHUFRISAT".
01 REDEFINES w1.
  03 w      PIC X(3) OCCURS 7 INDEXED BY ix.
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT S.
  MOVE 7 TO n.
  PERFORM UNTIL n < ix
    SEARCH w VARYING ix
      AT END
        CONTINUE
      WHEN S = w(ix)
        MOVE ix TO ans
        SET ix UP BY 1
    END-SEARCH
  END-PERFORM.
  COMPUTE ans = 7 - (ans - 1).
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

