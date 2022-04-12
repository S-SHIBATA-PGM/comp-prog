IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 df         PIC 9(6).
01 i          PIC 9(6).
01 mn         PIC 9(6).
01 n          PIC 9(6).
01 rm         PIC 9(6).
01 tmp        PIC 9(6).
01 zs         PIC Z(6)9.

PROCEDURE DIVISION.
  ACCEPT n.
  MOVE 100001 TO mn.
  PERFORM VARYING i FROM 1 BY 1 UNTIL n < i * i
    *> i - (n / i)
    *> n - i * (n / i)
    COMPUTE tmp = n / i
    COMPUTE df = i - tmp
    COMPUTE rm = n - i * tmp
    COMPUTE mn = FUNCTION min(mn, df + rm)
  END-PERFORM.
  MOVE mn TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

