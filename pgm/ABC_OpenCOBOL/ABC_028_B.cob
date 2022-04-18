IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(100).
01 A          PIC 9(10) VALUE ZERO.
01 B          PIC 9(10) VALUE ZERO.
01 C          PIC 9(10) VALUE ZERO.
01 D          PIC 9(10) VALUE ZERO.
01 E          PIC 9(10) VALUE ZERO.
01 F          PIC 9(10) VALUE ZERO.
01 za         PIC Z(9)9.
01 zb         PIC Z(9)9.
01 zc         PIC Z(9)9.
01 zd         PIC Z(9)9.
01 ze         PIC Z(9)9.
01 zf         PIC Z(9)9.
01 ans        PIC X(100).

PROCEDURE DIVISION.
  ACCEPT S.
  INSPECT S TALLYING A FOR ALL "A".
  INSPECT S TALLYING B FOR ALL "B".
  INSPECT S TALLYING C FOR ALL "C".
  INSPECT S TALLYING D FOR ALL "D".
  INSPECT S TALLYING E FOR ALL "E".
  INSPECT S TALLYING F FOR ALL "F".
  MOVE A TO za.
  MOVE B TO zb.
  MOVE C TO zc.
  MOVE D TO zd.
  MOVE E TO ze.
  MOVE F TO zf.
  STRING
    FUNCTION TRIM(za)
    " "
    FUNCTION TRIM(zb)
    " "
    FUNCTION TRIM(zc)
    " "
    FUNCTION TRIM(zd)
    " "
    FUNCTION TRIM(ze)
    " "
    FUNCTION TRIM(zf)
    INTO ans
  END-STRING.
  DISPLAY FUNCTION TRIM(ans).
  STOP RUN.

