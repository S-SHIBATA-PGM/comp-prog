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

�����ꃁ�\�b�h  
__int__(self)  
���\�b�h�̓I�u�W�F�N�g�ɕt�����鐫��  
int�Alen��python�̑g�ݍ��݊֐�  
join�̓��\�b�h  

��itertools.product�^�̓W�F�l���[�^  
for���[�v�ŗ񋓂Ń^�v�����擾�ł���  
a = ("Shinji", "SHIBATA")  
print("�@".join(a))  
print(["".join(x) for x in product("abc", repeat=N)])  
"".join()���\�b�h��int()�g�ݍ��݊֐��Ɠ����悤��  
map()�g�ݍ��݊֐��̑�1�����Ɏw��o����  
map("".join, product("abc", repeat=N))  
"".join()���\�b�h�̈�����map���w��ł���̂�  
print("\n".join(map("".join, product("abc", repeat=N))))  
"".join()���\�b�h�́Amap�⃊�X�g��^�v���Ȃǂ̃C�e���u���I�u�W�F�N�g�������ł���  
map()�֐��̓��X�g��^�v���Ȃǂ̃C�e���u���I�u�W�F�N�g�̂��ׂĂ̗v�f�ɓ������Z��K�p����֐�  

���C�e���u���ȃW�F�l���[�^�[  
�u�C�e���u���v�́uiterable�v�Łu�����\�ȁv�ł��B  
for���ȂǂŔ����ł�����̑S���Ƃ������Ƃł��傤�B  
�ł��̂ŁA__next__�i�C�e���[�^�j�̑�yield�i�W�F�l���[�^�j�Ȃǂ��܂܂�܂��B   

���֐�
import os
os.getcwd()
getcwd��os���W���[���̊֐�

���ׂ���͗D��x������  
(2 ** (N // 2) + 1) % INF  

���}�C�i�X �� << �����D��x������  
N �V�t�g��D�悳�������ꍇ��()������  
(1 << N) - 1

���A���p�̓V�t�g���ア  
1 << i & 1

���C�R�[���̓A���p���ア  
if b & 1 == 0:  

��flatten  
sum([[1,2,3],[4,5,6],[7,8,9]], [])  #=> [1, 2, 3, 4, 5, 6, 7, 8, 9]

�����X�g����L�@  
https://qiita.com/frodo821/items/26131635eb16ee4b1467  
https://atcoder.jp/contests/abc052/submissions/8206471  

loop = {0: 0}  
[loop.update({0: loop[0] + i}) for i in range(5)]  
print(loop)  

��O(1)  
ABC_056_C  
(�|1 + ��(8X+1)) /2  

ABC_062_C  
https://atcoder.jp/contests/abc062/submissions/1296576  


�����K�\��  
ABC_049_C  
import re;print(re.match('(dream|dreamer|erase|eraser)*$',input())and'YES'or'NO')

��ABC_019_C
ans = len({i // (i & -i) for i in A})

