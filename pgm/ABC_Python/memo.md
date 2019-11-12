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

