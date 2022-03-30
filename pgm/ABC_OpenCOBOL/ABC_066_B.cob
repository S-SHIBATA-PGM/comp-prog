IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(200).
01 flg        PIC 9(1).
01 i          PIC 9(3).
01 ini        PIC 9(3).
01 j          PIC 9(3).
01 k          PIC 9(3).
01 l          PIC 9(3).
01 len        PIC 9(3).
01 len2       PIC 9(3).
01 zs         PIC Z(4).

PROCEDURE DIVISION.
  ACCEPT S.
  COMPUTE len = FUNCTION STORED-CHAR-LENGTH(S).
  SUBTRACT 1 FROM len GIVING l.
  PERFORM VARYING i FROM l BY -1 UNTIL i = 1
    MOVE 1 TO FLG
    IF FUNCTION MOD(i, 2) = 1 THEN
      MOVE 0 TO flg
    ELSE
      MOVE i TO k
      DIVIDE 2 INTO k GIVING ini
      MOVE ini TO len2
      ADD 1 TO ini
      IF S(1:len2) NOT = S(ini:len2) THEN
        MOVE 0 TO flg
      END-IF
    END-IF
    IF flg = 1 THEN
      EXIT PERFORM
    END-IF
  END-PERFORM.
  MOVE i TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

