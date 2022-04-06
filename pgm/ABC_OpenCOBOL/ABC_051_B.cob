IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 K          PIC 9(4).
01 S          PIC 9(4).
01 cnt        PIC 9(9).
01 i          PIC 9(4) BINARY.
01 j          PIC 9(4) BINARY.
01 ln         PIC X(9).
01 tmp        PIC 9(9).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO K S.
  MOVE ZERO TO cnt.
  PERFORM VARYING i FROM 0 BY 1 UNTIL 3 * K < i
    IF K < i THEN
      EXIT PERFORM
    END-IF
    PERFORM VARYING j FROM 0 BY 1 UNTIL 3 * K < j
      IF K < j THEN
        EXIT PERFORM
      END-IF
      ADD i TO j GIVING tmp
      IF tmp <= S AND S - tmp <= K THEN
        ADD 1 TO cnt
      ELSE
        IF S < tmp THEN
          EXIT PERFORM
        END-IF
      END-IF
    END-PERFORM
  END-PERFORM.
  MOVE cnt TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

