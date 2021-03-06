IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(19).
01 B          PIC 9(19).
01 K          PIC 9(19).
01 ans        PIC X(40).
01 ln         PIC X(42).
01 mna        PIC 9(19).
01 mnb        PIC 9(19).
01 zsa        PIC Z(18)9.
01 zsb        PIC Z(18)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO A B K.
  COMPUTE mna = FUNCTION MIN(A, K).
  COMPUTE A = A - mna.
  COMPUTE mna = K - mna.
  COMPUTE mnb = FUNCTION MIN(B, mna).
  COMPUTE B = B - mnb.
  MOVE A TO zsa.
  MOVE B TO zsb.
  STRING FUNCTION TRIM(zsa) SPACE FUNCTION TRIM(zsb) INTO ans.
  DISPLAY FUNCTION TRIM(ans).
  STOP RUN.

