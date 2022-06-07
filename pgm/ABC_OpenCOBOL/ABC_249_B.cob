IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(100).
01 flg        PIC 9(1) VALUE ZERO.
01 i          PIC 9(10) COMP.
01 idx        PIC 9(10).
01 l1.
   03 l       PIC 9(1) VALUE ZERO OCCURS 26.
01 len        PIC 9(10).
01 lower      PIC 9(1) VALUE ZERO.
01 u1.
   03 u       PIC 9(1) VALUE ZERO OCCURS 26.
01 upper      PIC 9(1) VALUE ZERO.
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT S.
  MOVE FUNCTION STORED-CHAR-LENGTH(S) TO len.
  PERFORM VARYING i FROM 1 BY 1 UNTIL len < i
    IF "a" <= S(i:1) AND S(i:1) <= "z"
      MOVE 1 TO lower
      COMPUTE idx = FUNCTION ORD(S(i:1)) - FUNCTION ORD("a") + 1
      ADD 1 TO l(idx)
      IF 1 < l(idx) MOVE 1 TO flg EXIT PERFORM END-IF
    ELSE
      MOVE 1 TO upper
      COMPUTE idx = FUNCTION ORD(S(i:1)) - FUNCTION ORD("A") + 1
      ADD 1 TO u(idx)
      IF 1 < u(idx) MOVE 1 TO flg EXIT PERFORM END-IF
    END-IF
  END-PERFORM.
  IF ZERO = flg AND 1 = lower AND upper DISPLAY "Yes"
  ELSE DISPLAY "No".
  STOP RUN.

