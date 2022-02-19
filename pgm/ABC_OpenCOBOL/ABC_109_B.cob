IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(10).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 cur        PIC 9(10) VALUE 1 COMP.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 ans        PIC 9(10).
01 zs         PIC Z(9)9.
01 flg        PIC 9(10).
01 N          PIC 9(10).
01 W1.
   03 W11 OCCURS 100 DEPENDING ON N INDEXED BY XW.
      05 W    PIC X(10).

PROCEDURE DIVISION.
  ACCEPT N.
  MOVE N TO maxlen.
  PERFORM maxlen TIMES
    ACCEPT ln
    MOVE ZERO TO flg
    SET XW TO 1
    SEARCH W11 VARYING XW
      WHEN W(XW) = ln
        MOVE 1 TO flg
    END-SEARCH
    IF 1 = flg
      EXIT PERFORM
    END-IF
    IF 1 NOT = i
      IF W(i - 1)(FUNCTION STORED-CHAR-LENGTH(W(i - 1)):1)
      NOT = ln(1:1)
        MOVE 1 TO flg
        EXIT PERFORM
      END-IF
    END-IF
    MOVE ln TO W(i)
    ADD 1 TO i
  END-PERFORM.
  IF 1 = flg
    DISPLAY "No"
  ELSE
    DISPLAY "Yes"
  END-IF.
  STOP RUN.
