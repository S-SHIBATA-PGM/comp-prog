IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 flg        PIC 9(1).
01 i          PIC 9(10) COMP.
01 ix         PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 k          PIC 9(10).
01 len        PIC 9(10).
01 pw1.
   03 pw      PIC X(300) OCCURS 90000 INDEXED BY xp.
01 s          PIC X(300).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT s.
  ACCEPT k.
  MOVE FUNCTION STORED-CHAR-LENGTH(s) TO len.
  PERFORM VARYING i FROM 1 BY 1 UNTIL len - k + 1 < i
    SET xp TO 1
    MOVE ZERO TO flg
    SEARCH pw VARYING xp
      AT END
        CONTINUE
      WHEN ZERO = FUNCTION STORED-CHAR-LENGTH(pw(xp))
        MOVE 0 TO flg
      WHEN FUNCTION TRIM(pw(xp)) = s(i:k)
        MOVE 1 TO flg
    END-SEARCH
    IF ZERO = flg THEN
      MOVE s(i:k) TO pw(ix)
      ADD 1 TO ix
    END-IF
  END-PERFORM.
  SUBTRACT 1 FROM ix.
  MOVE ix TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

