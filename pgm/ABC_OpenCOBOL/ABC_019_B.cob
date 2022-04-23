IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ans        PIC X(2000).
01 bk         PIC X(2000).
01 cnt        PIC 9(10) VALUE ZERO COMP.
01 cur        PIC X(1).
01 i          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 pre        PIC X(1).
01 s          PIC X(1000).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT s.
  MOVE FUNCTION STORED-CHAR-LENGTH(s) TO len.
  MOVE s(1:1) TO pre.
  PERFORM VARYING i FROM 1 BY 1 UNTIL len < i
    MOVE s(i:1) TO cur
    IF pre NOT = cur THEN
      MOVE ans TO bk
      MOVE cnt TO zs
      STRING
        FUNCTION TRIM(bk)
        pre
        FUNCTION TRIM(zs)
        INTO ans
      END-STRING
      MOVE ZERO TO cnt
    END-IF
    ADD 1 TO cnt
    MOVE cur TO pre
  END-PERFORM.
  *> 最後の文字
  MOVE ans TO bk.
  MOVE cnt TO zs.
  STRING
    FUNCTION TRIM(bk)
    pre
    FUNCTION TRIM(zs)
    INTO ans
  END-STRING.
  DISPLAY FUNCTION TRIM(ans).
  STOP RUN.

