IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 COLOR      PIC 9(2).
01 D1.
   03 D11 OCCURS 30.
      05 D    PIC 9(4) OCCURS 30.
01 MAX_SUM    PIC 9(10) VALUE 9999999999.
01 N          PIC 9(3).
01 c1.
   03 c11 OCCURS 3.
       05 c   PIC 9(10) OCCURS 30 VALUE ZERO.
01 cur        PIC 9(4).
01 i          PIC 9(18).
01 j          PIC 9(18).
01 k          PIC 9(18).
01 ki         PIC 9(18).
01 len        PIC 9(4).
01 ln1        PIC X(6).
01 ln2        PIC X(1500).
01 m          PIC 9(18).
01 maxlen     PIC 9(3).
01 r          PIC 9(1).
01 res        PIC 9(10).
01 sm         PIC 9(10).
01 tmp        PIC 9(2).
01 x          PIC 9(4).
01 zs         PIC Z(10)9.

PROCEDURE DIVISION.
  ACCEPT ln1.
  UNSTRING ln1
  DELIMITED BY SPACE INTO N COLOR.
  MOVE COLOR TO maxlen.
  PERFORM VARYING k FROM 1 BY 1 UNTIL COLOR < k
    ACCEPT ln2
    MOVE 1 TO cur
    MOVE 1 TO i
    PERFORM maxlen TIMES
      PERFORM VARYING j FROM cur BY 1
        UNTIL ln2(j:1) = SPACE
      END-PERFORM
      COMPUTE len = j - cur
      MOVE ln2(cur:len) TO D(k i)
      COMPUTE cur = j + 1
      ADD 1 TO i
    END-PERFORM
  END-PERFORM.
  MOVE N TO maxlen.
  PERFORM VARYING k FROM 1 BY 1 UNTIL N < k
    ACCEPT ln2
    MOVE 1 TO cur
    MOVE 1 TO i
    PERFORM maxlen TIMES
      PERFORM VARYING j FROM cur BY 1
        UNTIL ln2(j:1) = SPACE
      END-PERFORM
      COMPUTE len = j - cur
      MOVE ln2(cur:len) TO tmp
      ADD i TO k GIVING ki
      DIVIDE 3 INTO ki GIVING x REMAINDER r
      ADD 1 TO r
      ADD 1 TO c(r tmp)
      COMPUTE cur = j + 1
      ADD 1 TO i
    END-PERFORM
  END-PERFORM.
  MOVE MAX_SUM TO res.
  PERFORM VARYING i FROM 1 BY 1 UNTIL COLOR < i
    PERFORM VARYING j FROM 1 BY 1 UNTIL COLOR < j
      IF i NOT = j
        PERFORM VARYING k FROM 1 BY 1 UNTIL COLOR < k
          IF i NOT = k AND j NOT = k
            MOVE 0 TO sm
            PERFORM VARYING m FROM 1 BY 1 UNTIL COLOR < m
              COMPUTE sm = sm + D(m i) * c(1 m)
            END-PERFORM
            PERFORM VARYING m FROM 1 BY 1 UNTIL COLOR < m
              COMPUTE sm = sm + D(m j) * c(2 m)
            END-PERFORM
            PERFORM VARYING m FROm 1 BY 1 UNTIL COLOR < m
              COMPUTE sm = sm + D(m k) * C(3 m)
            END-PERFORM
            IF sm < res
              MOVE sm TO res
            END-IF
          END-IF
        END-PERFORM
      END-IF
    END-PERFORM
  END-PERFORM.
  MOVE res TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

