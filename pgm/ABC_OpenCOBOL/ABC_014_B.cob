PROGRAM-ID. ABC_014_B.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 NUM_OFF    EXTERNAL PIC 9(1).
01 NUM_ON     EXTERNAL PIC 9(1).
01 NUM_X      EXTERNAL PIC 9(1).
01 X          PIC 9(10).
01 a1.
   03 a11 OCCURS 20 DEPENDING ON n.
      05 a    PIC 9(10).
01 b_txt      PIC X(32) VALUE SPACE.
01 cur        PIC 9(10) VALUE 1 COMP.
01 cr         PIC 9(10) VALUE 1.
01 d_num      PIC 9(10) VALUE ZERO.
01 h_num      PIC X(4) VALUE X"00000000".
01 h_txt      PIC X(8) VALUE SPACE.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 ln         PIC X(100).
01 len        PIC 9(10) COMP.
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 n          PIC 9(10).
01 n_bit      PIC 9(1).
01 r          PIC 9(10).
01 sm         PIC 9(10) VALUE ZERO.
01 x_th       PIC 9(2) VALUE ZERO.
01 x_div      PIC 9(1) VALUE ZERO.
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO n X.
  ACCEPT ln.
  MOVE n TO maxlen.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO a(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  PERFORM WITH TEST AFTER UNTIL X <= ZERO
    *> 外部データ
    *> 実行単位中の複数のプログラムで使用する定数を設定
    CALL "SET_EXTERNAL"
    *> 2進数 対応表 0 〜 15
    CALL "B_TABLE"
    *> 演算対象 の 10進数 設定
    MOVE X TO d_num
    *> 10進数 を 16進数 に変換
    CALL "DCM_TO_HEX" USING BY CONTENT d_num
                            BY REFERENCE h_num
    *> 16進数 を 2進数、10進数 に変換
    CALL "HEX_TO_OTHER" USING BY CONTENT h_num
                              BY REFERENCE b_txt
                              BY REFERENCE d_num
                              BY REFERENCE h_txt
    MOVE 1 TO x_th
    CALL "GET_NTH_BIT" USING BY CONTENT x_th
                              BY CONTENT d_num
                              BY REFERENCE n_bit
    IF 1 = n_bit THEN
      ADD A(cr) TO sm
    END-IF
    DIVIDE X BY 2 GIVING X
    ADD 1 TO cr
  END-PERFORM.
  MOVE sm TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
END PROGRAM ABC_014_B.

PROGRAM-ID. SET_EXTERNAL.
*> 外部データ
*> 実行単位中の複数のプログラムで使用する定数を設定
*> external data
*> Set constants used for multiple programs in running unit
DATA DIVISION.
WORKING-STORAGE SECTION.
    01 BNY     EXTERNAL PIC 9(1).
    01 BIT4    EXTERNAL PIC 9(1).
    01 BYT4    EXTERNAL PIC 9(1).
    01 BYT32   EXTERNAL PIC 9(2).
    01 BYT256  EXTERNAL PIC 9(3).
    01 HXD     EXTERNAL PIC 9(2).
    01 NUM_OFF EXTERNAL PIC 9(1).
    01 NUM_ON  EXTERNAL PIC 9(1).
    01 NUM_X   EXTERNAL PIC 9(1).
    01 OCT     EXTERNAL PIC 9(1).

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
    MOVE 0 TO NUM_OFF.
    MOVE 1 TO NUM_ON.
    MOVE 9 TO NUM_X.
    MOVE 8 TO OCT.

    MOVE "0123456789ABCDEF" TO H_TBL1.
END PROGRAM SET_EXTERNAL.

PROGRAM-ID. B_TABLE.
*> 2進数 対応表 0 〜 15
*> 0001
*> 0010
*> 中略
*> 1111
DATA DIVISION.
WORKING-STORAGE SECTION.
*> 16
    01 HXD     EXTERNAL PIC 9(2).
*> 2
    01 BNY     EXTERNAL PIC 9(1).
*> 4
    01 BYT4    EXTERNAL PIC 9(1).
*> 8
    01 OCT     EXTERNAL PIC 9(1).

    01 p       PIC 9(1).

    01 i       PIC 9(8).
    01 j       PIC 9(8).

    01 q       PIC 9(2).
    01 r       PIC 9(1).

    01 s       PIC X(1).
    01 str     PIC X(4).

    01 len     PIC 9(1).
    01 idx     PIC 9(2).

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

PROGRAM-ID. DCM_TO_HEX.
*> 10進数 を 16進数 に変換
*> 4 byte (32 bit) 用
*> Convert decimal number to hexadecimal number
*> For 4 byte (32 bit)
DATA DIVISION.
WORKING-STORAGE SECTION.
*> 2
    01 BNY     EXTERNAL PIC 9(1).
*> 4
    01 BYT4    EXTERNAL PIC 9(1).
*> 256
    01 BYT256  EXTERNAL PIC 9(3).
*> 8
    01 OCT     EXTERNAL PIC 9(1).

    01 d       PIC 9(3) BINARY.

    01 filler REDEFINES d.
        03 filler PIC X.
        03 dbyte  PIC X.

    01 i       PIC 9(1).
    01 idx     PIC 9(1).

    01 q       PIC 9(10).
    01 r       PIC 9(3).

LINKAGE SECTION.
*> (IN)  d_num
*> (OUT) h_num
    01 d_num   PIC 9(10).
    01 h_num   PIC X(4).

PROCEDURE DIVISION USING d_num h_num.
    INITIALIZE h_num
    MOVE d_num TO q

*> 1 byte ずつ処理
    PERFORM VARYING i FROM 1 BY 1 UNTIL LENGTH of h_num < i
*> 4 - i
        COMPUTE idx = BYT4 - i

*> 10進数 を 256 で割る
        DIVIDE BYT256 INTO q GIVING q REMAINDER r

*> 余り(10進数 1 byte) を 代入することで
        MOVE r TO d

*> 16進数 を得ることができる
        MOVE dbyte TO h_num(idx + 1:1)
    END-PERFORM.
END PROGRAM DCM_TO_HEX.

PROGRAM-ID. HEX_TO_OTHER.
*> 16進数 を 2進数、10進数 に変換
*> 4 byte (32 bit) 用
*> Convert hexadecimal number to binary number, decimal number
*> For 4 byte (32 bit)
DATA DIVISION.
WORKING-STORAGE SECTION.
*> 4
    01 BIT4    EXTERNAL PIC 9(1).
*> 2
    01 BNY     EXTERNAL PIC 9(1).
*> 4
    01 BYT4    EXTERNAL PIC 9(1).
*> 256
    01 BYT256  EXTERNAL PIC 9(3).
*> 16
    01 HXD     EXTERNAL PIC 9(2).
*> 8
    01 OCT     EXTERNAL PIC 9(1).

    01 d       PIC 9(3) BINARY.

    01 filler REDEFINES d.
        03 filler PIC X.
        03 dbyte  PIC X.

    01 i       PIC 9(1).

    01 j       PIC 9(1).
    01 k       PIC 9(2).
    01 m       PIC 9(1).

    01 q       PIC 9(10).
    01 r       PIC 9(2).

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
    01 h_num   PIC X(4).
    01 b_txt   PIC X(32).
    01 d_num   PIC 9(10).
    01 h_txt   PIC X(8).

PROCEDURE DIVISION USING h_num b_txt d_num h_txt.
    INITIALIZE b_txt
    INITIALIZE d_num
    INITIALIZE h_txt

*> 1 byte ずつ処理
    PERFORM VARYING i FROM 1 BY 1 UNTIL LENGTH OF h_num < i
*> 2 * i - 1
        COMPUTE j = BNY * i - 1

*> 8 * i - 7
        COMPUTE k = OCT * (i - 1) + 1

*> 7 - (2 * i - 1)
        COMPUTE m = OCT - BNY * i

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

*> 16^0 の位 から 16^7 の位 までの 8桁
*> 10進数 上位桁 足し込み
        COMPUTE d_num = d_num + HXD ** (m + 1) * q

*> 10進数 下位桁 足し込み
        COMPUTE d_num = d_num + HXD ** m * r
    END-PERFORM.
END PROGRAM HEX_TO_OTHER.

PROGRAM-ID. DCM_TO_BNY.
*> 10進数 を 2進数 に変換
*> 4 byte (32 bit) 用
*> Convert decimal number to binary number
*> For 4 byte (32 bit)
DATA DIVISION.
WORKING-STORAGE SECTION.
*> 4
    01 BIT4    EXTERNAL PIC 9(1).
*> 2
    01 BNY     EXTERNAL PIC 9(1).
*> 4
    01 BYT4    EXTERNAL PIC 9(1).
*> 32
    01 BYT32   EXTERNAL PIC 9(2).
*> 256
    01 BYT256  EXTERNAL PIC 9(3).
*> 16
    01 HXD     EXTERNAL PIC 9(2).
*> 8
    01 OCT     EXTERNAL PIC 9(1).

    01 i       PIC 9(2).

    01 j       PIC 9(1).
    01 k       PIC 9(2).
    01 m       PIC 9(1).

    01 q       PIC 9(10).
    01 r       PIC 9(2).

*> 2進数 対応表 0 〜 15
    01 B_TBL1 EXTERNAL.
        03 B_TBL11 OCCURS 16.
            05 B_TBL PIC X(4).

*> 16進数 対応表 0 〜 15
    01 H_TBL1 EXTERNAL.
        03 H_TBL11 OCCURS 16.
            05 H_TBL PIC X(1).

LINKAGE SECTION.
*> (IN)  d_num
*> (OUT) b_txt
    01 d_num   PIC 9(10).
    01 b_txt   PIC X(32).

PROCEDURE DIVISION USING d_num b_txt.
    MOVE ALL ZERO TO b_txt

    MOVE d_num TO q

    PERFORM VARYING i FROM 1 BY 1 UNTIL q <= 0
*> 32 - 4 * i + 1
        COMPUTE k = BYT32 - BYT4 * i + 1

*> 10進数 を 16 で割る
        DIVIDE HXD INTO q GIVING q REMAINDER r

*> 後ろから格納していく
*> [1111]
        MOVE B_TBL(r + 1) TO b_txt(k:BIT4)

    END-PERFORM.
END PROGRAM DCM_TO_BNY.

PROGRAM-ID. BNY_TO_DCM.
*> 2進数 を 10進数 に変換
*> 4 byte (32 bit) 用
*> Convert binary number to decimal number
*> For 4 byte (32 bit)
DATA DIVISION.
WORKING-STORAGE SECTION.
*> 4
    01 BIT4    EXTERNAL PIC 9(1).
*> 2
    01 BNY     EXTERNAL PIC 9(1).
*> 4
    01 BYT4    EXTERNAL PIC 9(1).
*> 32
    01 BYT32   EXTERNAL PIC 9(2).
*> 256
    01 BYT256  EXTERNAL PIC 9(3).
*> 16
    01 HXD     EXTERNAL PIC 9(2).
*> 8
    01 OCT     EXTERNAL PIC 9(1).

    01 i       PIC 9(2).
    01 j       PIC 9(2).

    01 tmp     PIC 9(1).

LINKAGE SECTION.
*> (IN)  b_num
*> (OUT) d_num
    01 b_txt   PIC X(32).
    01 d_num   PIC 9(10).

PROCEDURE DIVISION USING b_txt d_num.
    INITIALIZE d_num

    MOVE ZERO TO i

*> 32 bit 処理
    PERFORM BYT32 TIMES

*> 32 - i
        COMPUTE j = BYT32 - i

        MOVE b_txt(j:1) TO tmp

*> 2^0 の位 から 2^31 の位 までの 32 bit
*> 10進数 足し込み
        COMPUTE d_num = d_num + BNY ** i * tmp

        ADD 1 TO i

    END-PERFORM.
END PROGRAM BNY_TO_DCM.

PROGRAM-ID. BNY_TO_HEX.
*> 2進数 を 16進数 に変換
*> 4 byte (32 bit) 用
*> Convert binary number to hexadecimal number
*> For 4 byte (32 bit)
DATA DIVISION.
WORKING-STORAGE SECTION.
*> 4
    01 BIT4    EXTERNAL PIC 9(1).
*> 2
    01 BNY     EXTERNAL PIC 9(1).
*> 4
    01 BYT4    EXTERNAL PIC 9(1).
*> 256
    01 BYT256  EXTERNAL PIC 9(3).
*> 16
    01 HXD     EXTERNAL PIC 9(2).
*> 8
    01 OCT     EXTERNAL PIC 9(1).

    01 d       PIC 9(4) BINARY.

    01 filler REDEFINES d.
        03 filler PIC X.
        03 dbyte  PIC X.

    01 i       PIC 9(2).
    01 j       PIC 9(2).
    01 k       PIC 9(2).

    01 tmp     PIC 9(1).

LINKAGE SECTION.
*> (IN)  b_txt
*> (OUT) h_num
    01 b_txt   PIC X(32).
    01 h_num   PIC X(4).

PROCEDURE DIVISION USING b_txt h_num.
    INITIALIZE h_num

*> 1 byte ずつ処理
    PERFORM VARYING i FROM 1 BY 1 UNTIL LENGTH OF h_num < i

        MOVE ZERO TO d

*> 8 * (i - 1) + 1
        COMPUTE k = OCT * (i - 1) + 1

*> 2進数 から 1 byte 取得 10進数 を 代入することで
        PERFORM VARYING j FROM 1 BY 1 UNTIL OCT < j
            MOVE b_txt(k + j - 1:1) TO tmp
            COMPUTE d = d + BNY ** (OCT - j) * tmp
        END-PERFORM

*> 16進数 を得ることができる
        MOVE dbyte TO h_num(i:1)
    END-PERFORM.
END PROGRAM BNY_TO_HEX.

PROGRAM-ID. GET_NTH_BIT.
*> Nビット目 を 取り出す
*> 4 byte (32 bit) 用
*> Get N-th bit
*> For 4 byte (32 bit)
DATA DIVISION.
WORKING-STORAGE SECTION.
*> 2
    01 BNY     EXTERNAL PIC 9(1).
*> 4
    01 BYT4    EXTERNAL PIC 9(1).
*> 32
    01 BYT32   EXTERNAL PIC 9(2).
*> 256
    01 BYT256  EXTERNAL PIC 9(3).
*> 16
    01 HXD     EXTERNAL PIC 9(2).
*> 8
    01 OCT     EXTERNAL PIC 9(1).

    01 b_tmp   PIC X(32).

LINKAGE SECTION.
*> (IN)  x_th
*>       d_num
*> (OUT) n_bit
    01 x_th    PIC 9(2) VALUE ZERO.
    01 d_num   PIC 9(10).
    01 n_bit   PIC 9(1).

PROCEDURE DIVISION USING x_th d_num n_bit.
    INITIALIZE n_bit

    CALL "DCM_TO_BNY" USING BY CONTENT d_num
                              BY REFERENCE b_tmp

*> 右から x_th 番目を取り出す
    MOVE b_tmp(BYT32 - x_th + 1:1) TO n_bit.
END PROGRAM GET_NTH_BIT.

PROGRAM-ID. SET_NTH.
*> Nビット目 操作
*> 4 byte (32 bit) 用
*> Set N-th bit operation
*> For 4 byte (32 bit)
DATA DIVISION.
WORKING-STORAGE SECTION.
*> 2
    01 BNY     EXTERNAL PIC 9(1).
*> 4
    01 BYT4    EXTERNAL PIC 9(1).
*> 32
    01 BYT32   EXTERNAL PIC 9(2).
*> 256
    01 BYT256  EXTERNAL PIC 9(3).
*> 16
    01 HXD     EXTERNAL PIC 9(2).
*> 0
    01 NUM_OFF EXTERNAL PIC 9(1).
*> 1
    01 NUM_ON  EXTERNAL PIC 9(1).
*> 9
    01 NUM_X   EXTERNAL PIC 9(1).
*> 8
    01 OCT     EXTERNAL PIC 9(1).

    01 b_tmp   PIC X(32).
    01 h_tmp   PIC X(4).

LINKAGE SECTION.
*> (IN)  x_th
*>       x_div
*>       d_num
*> (OUT) d_num
*>       h_num
    01 x_th    PIC 9(2).
    01 x_div   PIC 9(1).
    01 d_num   PIC 9(10).
    01 h_num   PIC X(4).

PROCEDURE DIVISION USING x_th x_div d_num h_num.
    MOVE ALL ZERO TO b_tmp

    IF x_div = NUM_OFF THEN
*> 1111 1111 1111 1111 1111 1111 1111 1111
        MOVE ALL '1' TO b_tmp
    END-IF

*> フラグ設定
    MOVE x_div TO b_tmp(BYT32 - x_th + 1:1)

    IF x_div = NUM_X THEN
*> 1
        MOVE NUM_ON TO b_tmp(BYT32 - x_th + 1:1)
    END-IF

    CALL "BNY_TO_HEX" USING BY CONTENT b_tmp
                              BY REFERENCE h_tmp

*> Nビット目 操作
*> 0 をセットする
    IF x_div = NUM_OFF THEN
        CALL "CBL_AND" USING h_tmp, h_num, BY VALUE BYT4
    ELSE
*> 1 をセットする
        IF x_div = NUM_ON THEN
            CALL "CBL_OR" USING h_tmp, h_num, BY VALUE BYT4
*> 反転する
        ELSE
            CALL "CBL_XOR" USING h_tmp, h_num, BY VALUE BYT4
        END-IF
    END-IF.
END PROGRAM SET_NTH.

