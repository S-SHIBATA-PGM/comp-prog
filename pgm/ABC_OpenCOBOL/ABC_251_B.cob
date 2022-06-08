IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A1.
   03 A       PIC 9(10) OCCURS 300 DEPENDING N.
01 N          PIC 9(10).
01 W          PIC 9(10).
01 cnt1.
   03 cnt     PIC 9(10) VALUE ZERO OCCURS 1000000.
01 num        PIC 9(10) VALUE ZERO COMP.
01 i          PIC 9(10) COMP.
01 j          PIC 9(10) COMP.
01 k          PIC 9(10) COMP.
01 ln         PIC X(2400).
01 pt         PIC S9(10) VALUE 1.
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED SPACE INTO N W.
  ACCEPT ln.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    UNSTRING ln DELIMITED SPACE INTO A(i) POINTER pt
  END-PERFORM
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    IF A(i) <= W
      ADD 1 TO cnt(A(i))
      IF 1 = cnt(A(i))
        ADD 1 TO num
      END-IF
      ADD 1 TO i GIVING j
      PERFORM VARYING j FROM j BY 1 UNTIL N < j
        IF A(j) <= W
          ADD 1 TO cnt(A(j))
          IF 1 = cnt(A(j))
            ADD 1 TO num
          END-IF
          IF A(i) + A(j) <= W
            ADD 1 TO cnt(A(i) + A(j))
            IF 1 = cnt(A(i) + A(j))
              ADD 1 TO num
            END-IF
          END-IF
          ADD 1 TO j GIVING k
          PERFORM VARYING k FROM k BY 1 UNTIL N < k
            IF A(k) <= W
              ADD 1 TO cnt(A(k))
              IF 1 = cnt(A(k))
                ADD 1 TO num
              END-IF
              IF A(i) + A(j) + A(K) <= W
                ADD 1 TO cnt(A(i) + A(j) + A(K))
                IF 1 = cnt(A(i) + A(j) + A(K))
                  ADD 1 TO num
                END-IF
              END-IF
            END-IF
          END-PERFORM
        END-IF
      END-PERFORM
    END-IF
  END-PERFORM.
  MOVE num TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

