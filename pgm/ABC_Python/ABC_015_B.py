import math

N = int(input())
A = [int(i) for i in input().split()]

cnt = 0
bug = 0

for i in range(N):
    if 0 < A[i]:
        cnt += 1
        bug += A[i]

print(math.ceil(bug / cnt))
