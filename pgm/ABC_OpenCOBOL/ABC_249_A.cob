IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 B          PIC 9(10).
01 C          PIC 9(10).
01 D          PIC 9(10).
01 E          PIC 9(10).
01 F          PIC 9(10).
01 X          PIC 9(10).
01 aoki       PIC 9(10).
01 dvr        PIC 9(10).
01 ln         PIC X(30).
01 q          PIC 9(10).
01 r          PIC 9(10).
01 takahashi  PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO A B C D E F X.
  COMPUTE dvr = A + C.
  DIVIDE X BY dvr GIVING q REMAINDER r.
  COMPUTE takahashi = q * A * B.
  IF r <= A COMPUTE takahashi = takahashi + r * B
  ELSE COMPUTE takahashi = takahashi + A * B END-IF.
  COMPUTE dvr = D + F.
  DIVIDE X BY dvr GIVING q REMAINDER r.
  COMPUTE aoki = q * D * E.
  IF r <= D COMPUTE aoki = aoki + r * E
  ELSE COMPUTE aoki = aoki + D * E END-IF.
  IF aoki < takahashi DISPLAY "Takahashi"
  ELSE IF takahashi < aoki DISPLAY "Aoki" ELSE DISPLAY "Draw".
  STOP RUN.

