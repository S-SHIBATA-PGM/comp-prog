IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 INP1       PIC X(17).
01 INP2       PIC X(7).
01 M          PIC 9(6).
01 N          PIC 9(3).
01 Q          PIC 9(6).
01 X          PIC 9(3).
01 Y          PIC 9(3).
*> 2次元累積和用
01 train1.
   03 train11 OCCURS 500 INDEXED YX1 YX2.
      05 train PIC 9(6) OCCURS 500 INDEXED XX1 XX2 VALUES ZERO.
01 ans        PIC X(6).
01 i          PIC 9(3) BINARY.
01 j          PIC 9(3) BINARY.
01 k          PIC 9(6) BINARY.
01 tmp        PIC 9(3) BINARY.
01 t          PIC 9(6).
01 zs         PIC Z(6)9.

PROCEDURE DIVISION.
  ACCEPT INP1.

  UNSTRING INP1 DELIMITED BY SPACE INTO N M Q.

  PERFORM VARYING k FROM 1 BY 1 UNTIL M < k
    ACCEPT INP2

    UNSTRING INP2 DELIMITED BY SPACE INTO X Y

*> train(Y X)
    SET XX1 TO X
    SET YX1 TO Y
    ADD 1 TO train(YX1 XX1)
  END-PERFORM.

*> 2次元累積和 横
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    PERFORM VARYING j FROM 2 BY 1 UNTIL N < j
      SUBTRACT 1 FROM j GIVING tmp
      SET XX1 TO tmp
      SET XX2 TO j
      SET YX1 TO i
      ADD train(YX1 XX1) TO train(YX1 XX2)
    END-PERFORM
  END-PERFORM.

*> 2次元累積和 縦
  PERFORM VARYING i FROM 2 BY 1 UNTIL N < i
    PERFORM VARYING j FROM 1 BY 1 UNTIL N < j
      SUBTRACT 1 FROM i GIVING tmp
      SET YX1 TO tmp
      SET YX2 TO i
      SET XX1 TO j
      ADD train(YX1 XX1) TO train(YX2 XX1)
    END-PERFORM
  END-PERFORM.

*> A        - B - C + D = E
*> □□□□   □□□□ □□□□ □□□□ □□□□
*> ■■■□   ■□□□ □□□□ □□□□ □■■□
*> ■■■□   ■□□□ □□□□ □□□□ □■■□
*> ■■■□   ■□□□ ■■■□ ☆□□□ □□□□

  PERFORM VARYING k FROM 1 BY 1 UNTIL Q < k
    ACCEPT INP2
    UNSTRING INP2 DELIMITED BY SPACE INTO X Y
    SET XX1 TO Y
    SET YX1 TO Y
    IF 1 = X THEN
      MOVE train(YX1 XX1) TO t
    ELSE
      SUBTRACT 1 FROM X GIVING tmp
      SET XX2 TO tmp
      SET YX2 TO tmp
      COMPUTE
        t = train(YX1 XX1) - train(YX1 XX2)
          - train(YX2 XX1) + train(YX2 XX2)
    END-IF
    MOVE t TO zs
    DISPLAY FUNCTION TRIM(zs)
  END-PERFORM.
  STOP RUN.

