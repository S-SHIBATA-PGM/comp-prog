IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(2).
01 B          PIC 9(2).
01 C          PIC 9(2).
01 X          PIC 9(5).
01 cnt        PIC 9(5) VALUE 0.
01 i          PIC 9(2).
01 j          PIC 9(2).
01 k          PIC 9(2).
01 val        PIC 9(5).
01 zs         PIC Z(4)9.

PROCEDURE DIVISION.
  ACCEPT A.
  ACCEPT B.
  ACCEPT C.
  ACCEPT X.
  PERFORM VARYING i FROM 0 BY 1 UNTIL A < i
    PERFORM VARYING j FROM 0 BY 1 UNTIL B < j
      PERFORM VARYING k FROM 0 BY 1 UNTIL C < k
        COMPUTE val = 500 * i + 100 * j + 50 * k
        IF val = X THEN
          ADD 1 TO cnt
        END-IF
      END-PERFORM
    END-PERFORM
  END-PERFORM.
  MOVE cnt TO zs.
  DISPLAY FUNCTION TRIM(zs).

