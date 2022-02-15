IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(30).
01 A          PIC 9(10).
01 D          PIC 9(10).
01 B          PIC 9(10).
01 K          PIC 9(10).
01 R          PIC 9(10).
01 i          PIC 9(10) VALUE 1.
01 j          PIC 9(10) VALUE 1.
01 n          PIC 9(10).
01 numa       PIC 9(10).
01 numb       PIC 9(10).
01 numc       PIC 9(10).
01 zs         PIC Z(9)9.
01 LA1.
   03 LA11 OCCURS 100 INDEXED BY XA.
      05 LA    PIC 9(10) VALUE ZERO.
01 LB1.
   03 LB11 OCCURS 100 INDEXED BY XB.
      05 LB    PIC 9(10) VALUE ZERO.
01 LC1.
   03 LC11 OCCURS 100 INDEXED BY XC.
      05 LC    PIC 9(10) VALUE ZERO.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO A B K.

  MOVE A TO n.
  MOVE ZERO TO numa.
  SET XA TO 1.

  PERFORM UNTIL FUNCTION SQRT(n) < i
    DIVIDE i INTO n GIVING D REMAINDER R
    IF ZERO = R
      MOVE i TO LA(XA)
      ADD 1 TO numa
      IF D NOT = i
        ADD 1 TO XA
        MOVE D TO LA(XA)
        ADD 1 TO numa
      END-IF
      ADD 1 TO XA
    END-IF
    ADD 1 TO i
  END-PERFORM.

  MOVE B TO n.
  MOVE ZERO TO numb.
  SET XB TO 1.

  PERFORM UNTIL FUNCTION SQRT(n) < j
    DIVIDE j INTO n GIVING D REMAINDER R
    IF ZERO = R
      MOVE j TO LB(XB)
      ADD 1 TO numb
      IF D NOT = j
        ADD 1 TO XB
        MOVE D TO LB(XB)
        ADD 1 TO numb
      END-IF
      ADD 1 TO XB
    END-IF
    ADD 1 TO j
  END-PERFORM.

  SORT LA11 DESCENDING LA.
  SORT LB11 DESCENDING LB.

  MOVE 1 TO i.
  MOVE 1 TO j.
  SET XA TO 1.
  SET XB TO 1.
  SET XC TO 1.

  PERFORM UNTIL numa < i
    PERFORM UNTIL numb < j
      IF LA(XA) = LB(XB)
        MOVE LA(XA) TO LC(XC)
        ADD 1 TO numc
        ADD 1 TO XA
        ADD 1 TO XB
        ADD 1 TO XC
        ADD 1 TO i
        ADD 1 TO j
      ELSE
        IF LA(XA) < LB(XB)
          ADD 1 TO XB
          ADD 1 TO j
        ELSE
          ADD 1 TO XA
          ADD 1 TO i
      END-IF
    END-PERFORM
  END-PERFORM.

  MOVE LC(K) TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
