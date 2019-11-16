open(0) の ゼロ は ファイル記述子 で 標準入力
read()でファイル全体を「文字列」で取得

a = list(accumulate(a))

print(sum(x * y for x, y in combinations(d, 2)))

datetimeモジュール  
datetime.datetime : 日時（日付と時刻）  
datetime.date : 日付  
datetime.time : 時刻  
datetime.timedelta : 時間差・経過時間  

import datetime  
S = datetime.datetime.strptime(input(), "%Y/%m/%d")  
T = datetime.datetime.strptime("2019/05/01", "%Y/%m/%d")  

※特殊メソッド  
__int__(self)  
メソッドはオブジェクトに付随する性質  
int、lenはpythonの組み込み関数  
joinはメソッド  

※itertools.product型はジェネレータ  
forループで列挙でタプルが取得できる  
a = ("Shinji", "SHIBATA")  
print("　".join(a))  
print(["".join(x) for x in product("abc", repeat=N)])  
"".join()メソッドもint()組み込み関数と同じように  
map()組み込み関数の第1引数に指定出来て  
map("".join, product("abc", repeat=N))  
"".join()メソッドの引数にmapを指定できるので  
print("\n".join(map("".join, product("abc", repeat=N))))  
"".join()メソッドは、mapやリストやタプルなどのイテラブルオブジェクトを結合できる  
map()関数はリストやタプルなどのイテラブルオブジェクトのすべての要素に同じ演算を適用する関数  

※イテラブルなジェネレーター  
「イテラブル」は「iterable」で「反復可能な」です。  
for文などで反復できるもの全部ということでしょう。  
ですので、__next__（イテレータ）の他yield（ジェネレータ）などが含まれます。   

※関数
import os
os.getcwd()
getcwdはosモジュールの関数

※べき乗は優先度が高い  
(2 ** (N // 2) + 1) % INF  

※マイナス は << よりも優先度が高い  
N シフトを優先させたい場合は()をつける  
(1 << N) - 1

※アンパはシフトより弱い  
1 << i & 1

※イコールはアンパより弱い  
if b & 1 == 0:  

※flatten  
sum([[1,2,3],[4,5,6],[7,8,9]], [])  #=> [1, 2, 3, 4, 5, 6, 7, 8, 9]

※リスト内包記法  
https://qiita.com/frodo821/items/26131635eb16ee4b1467  
https://atcoder.jp/contests/abc052/submissions/8206471  

loop = {0: 0}  
[loop.update({0: loop[0] + i}) for i in range(5)]  
print(loop)  

※O(1)  
ABC_056_C  
(－1 + √(8X+1)) /2  

ABC_062_C  
https://atcoder.jp/contests/abc062/submissions/1296576  


※正規表現  
ABC_049_C  
import re;print(re.match('(dream|dreamer|erase|eraser)*$',input())and'YES'or'NO')

※ABC_019_C
ans = len({i // (i & -i) for i in A})


np.frombuffer
Buffer Protocolという機構
bytesやarray.arrayなどのオブジェクトでは、Cレベルのバイト列を扱うことができる
np.frombuffer関数は、メモリのバイト列を直接読み込むため、大容量のデータをコピーせずに処理することが可能で、処理速度の高速化につながる
numpy.frombuffer(buffer, dtype=float, count=-1, offset=0)
バッファーとして読み込むオブジェクトを指定します。
(省略可能)初期値float、配列を返すときの要素のデータ型を指定します。
(省略可能)初期値-1、いくつのアイテムを読み込むかを指定します。デフォルトの-1では全てのデータを読み込みます。
省略可能)初期値0
バイト単位で、どこの地点からデータを読み込むかを指定します。

引数bufferとして渡されたbufferを１次元配列に変換するものです。countやoffsetでデータを読み込む個数や開始点を指定できます。また、dtypeで返される配列のデータ型を指定することができる

NumPy配列ndarrayはデータ型dtypeを保持しており、np.array()でndarrayオブジェクトを生成する際に指定したり、astype()メソッドで変更したりすることができる。

基本的には一つのndarrayオブジェクトに対して一つのdtypeが設定されていて、すべての要素が同じデータ型となる。


つまり、正しくNumPy配列のデータ型を指定することでPythonからでもメモリ効率と実行効率の良いコードを実装することができます。

int (符号付きの整数)
uint (符号なしの整数)
float (浮動小数点数)
bool –真偽値–


すべての組み込みデータ型オブジェクトには、「=」または「|」のバイト順があります。
この場合、バイトオーダーフラグは必要ないため、|に設定されます。つまり、適用されません。

Array-scalar types
>>> dt = np.dtype(np.int32)      # 32-bit integer
>>> dt = np.dtype(np.complex128) # 128-bit complex floating-point number

Generic types
number, inexact, floating 	float
complexfloating 	cfloat
integer, signedinteger 	int_
unsignedinteger 	uint
character 	string
generic, flexible 	void

Built-in Python types
int 	int_
bool 	bool_
float 	float_
complex 	cfloat
bytes 	bytes_
str 	bytes_ (Python2) or unicode_ (Python3)
unicode 	unicode_
buffer 	void
(all others) 	object_

同種の配列の基本型を提供する文字列基本的な文字列形式は、データのバイト順序を記述する文字（<：リトルエンディアン、>：ビッグエンディアン、|：無関係）、
文字コードの3つの部分で構成されます。配列の基本型と、その型が使用するバイト数を示す整数を提供します。

t 	Bit field (following integer gives the number of bits in the bit field).
b 	Boolean (integer type where all values are only True or False)
i 	Integer
u 	Unsigned integer
f 	Floating point
c 	Complex floating point
m 	Timedelta
M 	Datetime
O 	Object (i.e. the memory contains a pointer to PyObject)
S 	String (fixed-length sequence of char)
U 	Unicode (fixed-length sequence of Py_UNICODE)
V 	Other (void * – each item is a fixed-size chunk of memory)

minimum


    # ABC017C - ハイスコア
    from itertools import accumulate
     
     
    def main():
        N, M, *A = map(int, open(0).read().split())
        total, imos = 0, [0] * (M + 2)
        for l, r, s in zip(*[iter(A)] * 3):
            imos[l] += s
            imos[r + 1] -= s
            total += s
        x = list(accumulate(imos))[1:-1]
        ans = total - min(x)
        print(ans)
     
     
    if __name__ == "__main__":
        main()
要素がイテレータiへの参照である新しいリスト（長さ2）を作成する  
イテレータ オブジェクトを返します。  
*アンパックキング(=*解凍)  
反復可能要素を取り、反復可能要素の各項目が  
個別の引数であるかのように「アンパック」する  
zip(*([i] * 2))  
zip(*[i] * 2)



