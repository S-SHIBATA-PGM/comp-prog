open(0) �� �[�� �� �t�@�C���L�q�q �� �W������
read()�Ńt�@�C���S�̂��u������v�Ŏ擾

a = list(accumulate(a))

print(sum(x * y for x, y in combinations(d, 2)))

datetime���W���[��  
datetime.datetime : �����i���t�Ǝ����j  
datetime.date : ���t  
datetime.time : ����  
datetime.timedelta : ���ԍ��E�o�ߎ���  

import datetime  
S = datetime.datetime.strptime(input(), "%Y/%m/%d")  
T = datetime.datetime.strptime("2019/05/01", "%Y/%m/%d")  

���ׂ���͗D��x������  
(2 ** (N // 2) + 1) % INF  

���}�C�i�X �� << �����D��x������  
N �V�t�g��D�悳�������ꍇ��()������  
(1 << N) - 1

��flatten
sum([[1,2,3],[4,5,6],[7,8,9]], [])  #=> [1, 2, 3, 4, 5, 6, 7, 8, 9]

�����X�g����L�@  
https://qiita.com/frodo821/items/26131635eb16ee4b1467  
https://atcoder.jp/contests/abc052/submissions/8206471  

loop = {0: 0}  
[loop.update({0: loop[0] + i}) for i in range(5)]  
print(loop)  

��O(1)  
ABC_056  
(�|1 + ��(8X+1)) /2  

ABC_062  
https://atcoder.jp/contests/abc062/submissions/1296576  



