IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 M          PIC 9(3).
01 N          PIC 9(3).
01 flg        PIC 9(1).
01 i          PIC 9(18).
01 j          PIC 9(18).
01 point      PIC S9(3) VALUE 0.
01 s1.
   03 s11 OCCURS 100.
      05 skey PIC X(10) VALUE SPACE.
      05 sval PIC 9(3) VALUE 0.
01 slen       PIC 9(3) VALUE 0.
01 t1.
   03 t11 OCCURS 100.
      05 tkey PIC X(10) VALUE SPACE.
      05 tval PIC 9(3) VALUE 0.
01 tlen       PIC 9(3) VALUE 0.
01 tmp        PIC S9(3).
01 tmpkey     PIC X(10) VALUE SPACE.
01 tmpval     PIC 9(3) VALUE 0.
01 zs         PIC Z(3)9.

PROCEDURE DIVISION.
  ACCEPT N.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    ACCEPT tmpkey
    MOVE 0 TO flg
    PERFORM VARYING j FROM 1 BY 1 UNTIL slen < j
      IF skey(j) = tmpkey THEN
        MOVE 1 TO flg
        ADD 1 TO sval(j)
      END-IF
    END-PERFORM
    IF flg = 0 THEN
      ADD 1 TO slen
      MOVE tmpkey TO skey(slen)
      MOVE 1 TO sval(slen)
    END-IF
  END-PERFORM.
  ACCEPT M.
  PERFORM VARYING i FROM 1 BY 1 UNTIL M < i
    ACCEPT tmpkey
    MOVE 0 TO flg
    PERFORM VARYING j FROM 1 BY 1 UNTIL tlen < j
      IF tkey(j) = tmpkey THEN
        MOVE 1 TO flg
        ADD 1 TO tval(j)
      END-IF
    END-PERFORM
    IF flg = 0 THEN
      ADD 1 TO tlen
      MOVE tmpkey TO tkey(tlen)
      MOVE 1 TO tval(tlen)
    END-IF
  END-PERFORM.
  PERFORM VARYING i FROM 1 BY 1 UNTIL slen < i
    MOVE sval(i) to tmp
    PERFORM VARYING j FROM 1 BY 1 UNTIL tlen < j
      IF skey(i) = tkey(j) THEN
        SUBTRACT tval(j) FROM tmp
      END-IF
    END-PERFORM
    COMPUTE point = FUNCTION MAX(point, tmp)
  END-PERFORM.
  MOVE point TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

