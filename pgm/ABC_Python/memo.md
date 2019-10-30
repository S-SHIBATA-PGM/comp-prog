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

※べき乗は優先度が高い  
(2 ** (N // 2) + 1) % INF  

※マイナス は << よりも優先度が高い  
N シフトを優先させたい場合は()をつける  
(1 << N) - 1

※flatten
sum([[1,2,3],[4,5,6],[7,8,9]], [])  #=> [1, 2, 3, 4, 5, 6, 7, 8, 9]

※リスト内包記法  
https://qiita.com/frodo821/items/26131635eb16ee4b1467  
https://atcoder.jp/contests/abc052/submissions/8206471  

loop = {0: 0}  
[loop.update({0: loop[0] + i}) for i in range(5)]  
print(loop)  

※O(1)  
ABC_056  
(－1 + √(8X+1)) /2  

ABC_062  
https://atcoder.jp/contests/abc062/submissions/1296576  



