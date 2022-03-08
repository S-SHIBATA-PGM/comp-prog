IDENTIFICATION DIVISION.
PROGRAM-ID. ABC_104_C.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 MAX_NUM    PIC 9(4) VALUE 1000.
01 HXD        EXTERNAL PIC 9(2).
01 NUM_OFF    EXTERNAL PIC 9(1).
01 NUM_ON     EXTERNAL PIC 9(1).
01 NUM_X      EXTERNAL PIC 9(1).
01 h_num      PIC X(2) VALUE X"0000".
01 h_txt      PIC X(4) VALUE SPACE.
01 b_txt      PIC X(16) VALUE SPACE.
01 d_num      PIC 9(5) VALUE ZERO.
01 x_th       PIC 9(2) VALUE ZERO.
01 x_div      PIC 9(1) VALUE ZERO.
01 n_bit      PIC 9(1).
01 INP        PIC X(11).
01 D          PIC 9(2).
01 G          PIC 9(8).
01 nm         PIC 9(3).
01 pt         PIC 9(7).
01 problem1.
    03 problem OCCURS 1000 DEPENDING D.
        05 n  PIC 9(3).
        05 p  PIC 9(7).
01 i          PIC 9(4).
01 j          PIC 9(2).
01 k          PIC 9(3).
01 m          PIC 9(2).
01 mx         PIC 9(4).
01 num        PIC 9(4).
01 point      PIC 9(8).
01 mnnum      PIC 9(4).
01 ans        PIC X(4).
01 flg        PIC 9(1).
01 ext        PIC 9(1).
01 zs         PIC Z(5).

PROCEDURE DIVISION.
  ACCEPT INP.
  UNSTRING INP DELIMITED BY SPACE INTO D G.
  PERFORM VARYING i FROM 1 BY 1 UNTIL D < i
    ACCEPT INP
    UNSTRING INP
    DELIMITED BY SPACE
    INTO nm pt
    MOVE nm TO n(i)
    MOVE pt TO p(i)
  END-PERFORM.
*> 外部データ
*> 実行単位中の複数のプログラムで使用する定数を設定
  CALL "SET_EXTERNAL".
*> 2進数 対応表 0 ? 15
  CALL "B_TABLE".
*> 最大 D 10
*> 1023
  COMPUTE mx = 2 ** D - 1.
*> 最大問題数 + 1
  ADD 1 TO MAX_NUM GIVING mnnum.
  PERFORM VARYING i FROM 0 BY 1 UNTIL mx < i
    MOVE i TO d_num
    CALL "DCM_TO_BNY" USING BY CONTENT d_num
                              BY REFERENCE b_txt
    MOVE ZERO TO num
    MOVE ZERO TO point
    PERFORM VARYING j FROM 1 BY 1 UNTIL D < j
      MOVE b_txt(HXD - j + 1:1) TO n_bit
      IF NUM_ON = n_bit THEN
        ADD n(j) TO num
        COMPUTE point = point + j * 100 * n(j)
        ADD p(j) TO point
      END-IF
    END-PERFORM
    MOVE 1 TO flg
    PERFORM FILLPOINT
    IF 1 = flg THEN
      COMPUTE mnnum = FUNCTION MIN(mnnum, num)
    END-IF
  END-PERFORM.
  MOVE mnnum TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

FILLPOINT SECTION.
  IF point < G THEN
    PERFORM VARYING k FROM D BY -1 UNTIL k <= ZERO
      MOVE b_txt(HXD - k + 1:1) TO n_bit
      IF NUM_OFF = n_bit THEN
        MOVE ZERO TO ext
        PERFORM VARYING m FROM 1 BY 1 UNTIL n(k) < m
          COMPUTE point = point + 100 * k
          ADD 1 TO num
          IF m NOT = n(k) AND G <= point
            MOVE 1 TO ext
            EXIT PERFORM
          ELSE
            IF m = n(k) THEN
              MOVE 0 TO flg
              MOVE 1 TO ext
              EXIT PERFORM
            END-IF
          END-IF
        END-PERFORM
        IF ext = 1 THEN
          EXIT PERFORM
        END-IF
      END-IF
    END-PERFORM
  END-IF.
END PROGRAM ABC_104_C.

IDENTIFICATION DIVISION.
PROGRAM-ID. SET_EXTERNAL.
*> 外部データ
*> 実行単位中の複数のプログラムで使用する定数を設定
*> external data
*> Set constants used for multiple programs in running unit
DATA DIVISION.
WORKING-STORAGE SECTION.
01 BNY        EXTERNAL PIC 9(1).
01 BIT4       EXTERNAL PIC 9(1).
01 BYT4       EXTERNAL PIC 9(1).
01 BYT32      EXTERNAL PIC 9(2).
01 BYT256     EXTERNAL PIC 9(3).
01 HXD        EXTERNAL PIC 9(2).
01 NUM_OFF    EXTERNAL PIC 9(1).
01 NUM_ON     EXTERNAL PIC 9(1).
01 NUM_X      EXTERNAL PIC 9(1).
01 OCT        EXTERNAL PIC 9(1).
*> 16進数 対応表 0 ? 15
    01 H_TBL1 EXTERNAL.
        03 H_TBL11 OCCURS 16.
            05 H_TBL PIC X(1).

PROCEDURE DIVISION.
    MOVE 2 TO BNY.
    MOVE 4 TO BIT4.
    MOVE 4 TO BYT4.
    MOVE 32 TO BYT32.
    MOVE 256 TO BYT256.
    MOVE 16 TO HXD.
    MOVE 0 TO NUM_OFF.
    MOVE 1 TO NUM_ON.
    MOVE 9 TO NUM_X.
    MOVE 8 TO OCT.
    MOVE "0123456789ABCDEF" TO H_TBL1.
END PROGRAM SET_EXTERNAL.

IDENTIFICATION DIVISION.
PROGRAM-ID. B_TABLE.
*> 2進数 対応表 0 ? 15
*> 0001
*> 0010
*> 中略
*> 1111
DATA DIVISION.
WORKING-STORAGE SECTION.
*> 16
01 HXD        EXTERNAL PIC 9(2).
*> 2
01 BNY        EXTERNAL PIC 9(1).
*> 4
01 BYT4       EXTERNAL PIC 9(1).
*> 8
01 OCT        EXTERNAL PIC 9(1).
01 p          PIC 9(1).
01 i          PIC 9(8).
01 j          PIC 9(8).
01 q          PIC 9(2).
01 r          PIC 9(1).
01 s          PIC X(1).
01 str        PIC X(4).
01 len        PIC 9(1).
01 idx        PIC 9(2).
*> 2進数 対応表 0 ? 15
01 B_TBL1 EXTERNAL.
    03 B_TBL11 OCCURS 16.
        05 B_TBL PIC X(4).

PROCEDURE DIVISION.
*> 0 ? 15
  PERFORM VARYING i FROM 0 BY 1 UNTIL HXD <= i
    MOVE i TO q
    MOVE ALL ZERO TO str
*> 繰り返し 2 で割る
    PERFORM VARYING j FROM 0 BY 1 UNTIL q <= 0
      DIVIDE BNY INTO q GIVING q REMAINDER r
      COMPUTE p = FUNCTION STORED-CHAR-LENGTH(str)
      SUBTRACT j FROM p
      MOVE r TO s
      STRING
        s
        INTO str WITH POINTER p
      END-STRING
    END-PERFORM
    ADD 1 TO i GIVING idx
*> 2進数 対応表 設定
    MOVE str TO B_TBL(idx)
  END-PERFORM.
END PROGRAM B_TABLE.

IDENTIFICATION DIVISION.
PROGRAM-ID. DCM_TO_BNY.
*> 10進数 を 2進数 に変換
*> 2 byte (16 bit) 用
*> Convert decimal number to binary number
*> For 2 byte (16 bit)
DATA DIVISION.
WORKING-STORAGE SECTION.
*> 4
01 BIT4       EXTERNAL PIC 9(1).
*> 2
01 BNY        EXTERNAL PIC 9(1).
*> 4
01 BYT4       EXTERNAL PIC 9(1).
*> 32
01 BYT32      EXTERNAL PIC 9(2).
*> 256
01 BYT256     EXTERNAL PIC 9(3).
*> 16
01 HXD        EXTERNAL PIC 9(2).
*> 8
01 OCT        EXTERNAL PIC 9(1).
01 i          PIC 9(2).
01 j          PIC 9(1).
01 k          PIC 9(2).
01 m          PIC 9(1).
01 q          PIC 9(5).
01 r          PIC 9(2).
*> 2進数 対応表 0 ? 15
01 B_TBL1 EXTERNAL.
   03 B_TBL11 OCCURS 16.
      05 B_TBL PIC X(4).
*> 16進数 対応表 0 ? 15
01 H_TBL1 EXTERNAL.
   03 H_TBL11 OCCURS 16.
      05 H_TBL PIC X(1).

LINKAGE SECTION.
*> (IN)  d_num
*> (OUT) b_txt
01 d_num      PIC 9(5).
01 b_txt      PIC X(16).

PROCEDURE DIVISION USING d_num b_txt.
  MOVE ALL ZERO TO b_txt.
  MOVE d_num TO q.
  PERFORM VARYING i FROM 1 BY 1 UNTIL q <= 0
*> 16 - 4 * i + 1
    COMPUTE k = HXD - BYT4 * i + 1
*> 10進数 を 16 で割る
    DIVIDE HXD INTO q GIVING q REMAINDER r
*> 後ろから格納していく
*> [1111]
    MOVE B_TBL(r + 1) TO b_txt(k:BIT4)
  END-PERFORM.
END PROGRAM DCM_TO_BNY.

