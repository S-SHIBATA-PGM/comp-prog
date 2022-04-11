IDENTIFICATION DIVISION.
PROGRAM-ID. ABC_041_D.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(30).
*> 2
01 BNY        EXTERNAL PIC 9(1).
*> 4
01 BYT4       EXTERNAL PIC 9(1).
*> 8
01 OCT        EXTERNAL PIC 9(1).
01 HX_ZERO    PIC X(2) VALUE X"0000".
01 INP        PIC X(6).
01 INP2       PIC X(5).
01 N          PIC 9(2).
01 M          PIC 9(3).
01 ZS         PIC Z(19).
01 ans        PIC X(18).
01 DUMMY      PIC X(1).
01 idx        PIC 9(2).
01 shift      PIC 9(5).
01 dpsize     PIC 9(5).
01 i          PIC 9(5).
01 j          PIC 9(2).
01 h_i        PIC X(2) VALUE X"0000".
01 h_j        PIC X(2) VALUE X"0000".
01 h_val      PIC X(2) VALUE X"0000".
01 h_idx      PIC X(2) VALUE X"0000".
01 bk_x       PIC X(4).
01 x          PIC 9(2).
01 y          PIC 9(2).
01 rabbit1.
   03 rabbit11 OCCURS 16.
      05 rabbit PIC X(2) VALUE X"0000".
01 dp0        PIC 9(18).
01 dp1.
    03 dp11 OCCURS 70000.
       05 dp  PIC 9(18).
01 dpval      PIC 9(18).
01 h_txt      PIC X(4) VALUE SPACE.
01 b_txt      PIC X(16) VALUE SPACE.
01 d_num      PIC 9(5) VALUE ZERO.
01 xx         PIC 9(2).

PROCEDURE DIVISION.
  CALL "SET_EXTERNAL".
  CALL "B_TABLE".
  ACCEPT INP.
  UNSTRING INP DELIMITED BY SPACE INTO N M.
  MOVE 1 TO shift.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    COMPUTE shift = BNY ** (i - 1)
    CALL "DCM_TO_HEX" USING BY CONTENT shift
                            BY REFERENCE rabbit(i)
  END-PERFORM.
  PERFORM VARYING i FROM 1 BY 1 UNTIL M < i
    ACCEPT INP2
    UNSTRING INP2 DELIMITED BY SPACE INTO x y
    MOVE rabbit(x) TO bk_x
    CALL "CBL_OR" USING bk_x, rabbit(y) BY VALUE BNY
  END-PERFORM.
  COMPUTE dpsize = BNY ** N - 1.
  MOVE 1 TO dp0.
  PERFORM VARYING i FROM 0 BY 1 UNTIL dpsize < i
    CALL "DCM_TO_HEX" USING BY CONTENT i
                            BY REFERENCE h_i
    MOVE 1 TO dpval
    IF i NOT = 0 THEN
      MOVE dp(i) TO dpval
    END-IF
    PERFORM VARYING j FROM 1 BY 1 UNTIL N < j
      COMPUTE shift = BNY ** (j - 1)
      CALL "DCM_TO_HEX" USING BY CONTENT shift
                                BY REFERENCE h_j
      MOVE h_i TO h_val
      CALL "CBL_AND" USING rabbit(j), h_val BY VALUE BNY
      IF h_val = HX_ZERO THEN
        MOVE h_i TO h_idx
        CALL "CBL_OR" USING h_j, h_idx BY VALUE BNY
        *> 16進数 を 2進数、10進数 に変換
        CALL "HEX_TO_OTHER" USING BY CONTENT h_idx
                                  BY REFERENCE b_txt
                                  BY REFERENCE d_num
                                  BY REFERENCE h_txt
        COMPUTE dp(d_num) = dp(d_num) + dp(i)
      END-IF
    END-PERFORM
  END-PERFORM.
  MOVE dp(dpsize) TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
END PROGRAM ABC_041_D.

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
01 NUM_ON     EXTERNAL PIC 9(1).
01 NUM_OFF    EXTERNAL PIC 9(1).
01 OCT        EXTERNAL PIC 9(1).

*> 16進数 対応表 0 〜 15
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
  MOVE 1 TO NUM_ON.
  MOVE 0 TO NUM_OFF.
  MOVE 8 TO OCT.
  MOVE "0123456789ABCDEF" TO H_TBL1.
END PROGRAM SET_EXTERNAL.

IDENTIFICATION DIVISION.
PROGRAM-ID. B_TABLE.
*> 2進数 対応表 0 〜 15
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
*> 2進数 対応表 0 〜 15
01 B_TBL1 EXTERNAL.
   03 B_TBL11 OCCURS 16.
      05 B_TBL PIC X(4).

PROCEDURE DIVISION.
  *> 0 〜 15
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
PROGRAM-ID. DCM_TO_HEX.
*> 10進数 を 16進数 に変換
*> 2 byte (16 bit) 用
*> Convert decimal number to hexadecimal number
*> For 2 byte (16 bit)
DATA DIVISION.
WORKING-STORAGE SECTION.
*> 2
01 BNY        EXTERNAL PIC 9(1).
*> 4
01 BYT4       EXTERNAL PIC 9(1).
*> 256
01 BYT256     EXTERNAL PIC 9(3).
*> 8
01 OCT        EXTERNAL PIC 9(1).
01 d          PIC 9(3) BINARY.
01 filler REDEFINES d.
   03 filler  PIC X.
   03 dbyte   PIC X.
01 i          PIC 9(1).
01 idx        PIC 9(1).
01 q          PIC 9(5).
01 r          PIC 9(3).

LINKAGE SECTION.
*> (IN)  d_num
*> (OUT) h_num
01 d_num      PIC 9(5).
01 h_num      PIC X(2).

PROCEDURE DIVISION USING d_num h_num.
  INITIALIZE h_num.
  MOVE d_num TO q.
  *> 1 byte ずつ処理
  PERFORM VARYING i FROM 1 BY 1 UNTIL LENGTH of h_num < i
    COMPUTE idx = BNY - i
    *> 10進数 を 256 で割る
    DIVIDE BYT256 INTO q GIVING q REMAINDER r
    *> 余り(10進数 1 byte) を 代入することで
    MOVE r TO d
    *> 16進数 を得ることができる
    MOVE dbyte TO h_num(idx + 1:1)
  END-PERFORM.
END PROGRAM DCM_TO_HEX.

IDENTIFICATION DIVISION.
PROGRAM-ID. HEX_TO_OTHER.
*> 16進数 を 2進数、10進数 に変換
*> 2 byte (16 bit) 用
*> Convert hexadecimal number to binary number, decimal number
*> For 2 byte (16 bit)
DATA DIVISION.
WORKING-STORAGE SECTION.
*> 4
01 BIT4       EXTERNAL PIC 9(1).
*> 2
01 BNY        EXTERNAL PIC 9(1).
*> 256
01 BYT256     EXTERNAL PIC 9(3).
*> 16
01 HXD        EXTERNAL PIC 9(2).
*> 8
01 OCT        EXTERNAL PIC 9(1).
01 d          PIC 9(3) BINARY.
01 filler REDEFINES d.
   03 filler  PIC X.
   03 dbyte   PIC X.
01 i          PIC 9(1).
01 j          PIC 9(1).
01 k          PIC 9(2).
01 m          PIC 9(1).
01 q          PIC 9(5).
01 r          PIC 9(3).
*> 2進数 対応表 0 〜 15
01 B_TBL1 EXTERNAL.
   03 B_TBL11 OCCURS 16.
      05 B_TBL PIC X(4).
*> 16進数 対応表 0 〜 15
01 H_TBL1 EXTERNAL.
   03 H_TBL11 OCCURS 16.
      05 H_TBL PIC X(1).

LINKAGE SECTION.
*> (IN)  h_num
*> (OUT) b_txt
*>       d_num
*>       h_txt
01 h_num      PIC X(2).
01 b_txt      PIC X(16).
01 d_num      PIC 9(5).
01 h_txt      PIC X(4).

PROCEDURE DIVISION USING h_num b_txt d_num h_txt.
  INITIALIZE b_txt.
  INITIALIZE d_num.
  INITIALIZE h_txt.
  *> 1 byte ずつ処理
  PERFORM VARYING i FROM 1 BY 1 UNTIL LENGTH OF h_num < i
    *> 2 * i - 1
    COMPUTE j = BNY * i - 1
    *> 8 * i - 7
    COMPUTE k = OCT * (i - 1) + 1
     *> 3 - (2 * i - 1)
    COMPUTE m = BIT4 - BNY * i
    *> 16進数 1 byte を 代入することで
    MOVE h_num(i:1) TO dbyte
    *> 得られた 10進数 を 16 で割る
    DIVIDE HXD INTO d GIVING q REMAINDER r
    *> 前から格納していく
    *> [F]
    MOVE H_TBL(q + 1) TO h_txt(j:1)
    *> [FF]
    MOVE H_TBL(r + 1) TO h_txt(j + 1:1)
    *> [1111]
    MOVE B_TBL(q + 1) TO b_txt(k:BIT4)
    *> [11111111]
    MOVE B_TBL(r + 1) TO b_txt(k + BIT4:BIT4)
    *> 16^0 の位 から 16^3 の位 までの 8桁
    *> 10進数 上位桁 足し込み
    COMPUTE d_num = d_num + HXD ** (m + 1) * q
    *> 10進数 下位桁 足し込み
    COMPUTE d_num = d_num + HXD ** m * r
  END-PERFORM.
END PROGRAM HEX_TO_OTHER.

