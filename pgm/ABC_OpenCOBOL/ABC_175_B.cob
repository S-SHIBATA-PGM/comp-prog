IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 L1.
   03 L       PIC 9(10) OCCURS 100 DEPENDING N.
01 N          PIC 9(10).
01 cnt        PIC 9(10) VALUE ZERO COMP.
01 cur        PIC 9(10) VALUE 1 COMP.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 k          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 ln         PIC X(2000).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT ln.
  PERFORM N TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO L(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  SORT L ASCENDING L.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    ADD 1 TO i GIVING j
    PERFORM VARYING j FROM j BY 1 UNTIL N < j
      ADD 1 TO j GIVING k
      PERFORM VARYING k FROM k BY 1 UNTIL N < k
        IF L(k) < L(i) + L(j)
        AND L(i) NOT = L(j)
        AND L(j) NOT = L(k)
        AND L(k) NOT = L(i) THEN
          ADD 1 TO cnt
        END-IF
      END-PERFORM
    END-PERFORM
  END-PERFORM.
  MOVE cnt TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

