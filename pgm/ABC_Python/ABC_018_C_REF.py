import sys
read = sys.stdin.buffer.read
readline = sys.stdin.buffer.readline
readlines = sys.stdin.buffer.readlines
sys.setrecursionlimit(10 ** 7)

# 'x'からの距離が、K以上の点を数える

import numpy as np

R,C,K = map(int,readline().split())
grid = np.frombuffer(read(),'S1')

grid = grid.reshape(R,-1)[:,:C]

temp = np.full((R+2,C+2),b'x',dtype='S1')
temp[1:-1,1:-1] = grid
grid = temp

x = np.full_like(grid,10**9,dtype=np.int32)
x[grid == b'x'] = 0
for n in range(1,C+1):
    np.minimum(x[:,n],x[:,n-1]+1,out=x[:,n])
for n in range(C,0,-1):
    np.minimum(x[:,n],x[:,n+1]+1,out=x[:,n])
for n in range(1,R+1):
    np.minimum(x[n],x[n-1]+1,out=x[n])
for n in range(R,0,-1):
    np.minimum(x[n],x[n+1]+1,out=x[n])

answer = np.count_nonzero(x >= K)

print(answer)

