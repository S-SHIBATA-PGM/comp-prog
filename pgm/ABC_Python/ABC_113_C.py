import sys

input = sys.stdin.readline

N, M = map(int, input().split())

Pm = [0] * M
Ym = [0] * M
ym = [0] * M

Am = [[0 for i in range(2)] for j in range(M)]
Cn = [0] * N

D = {}

for i in range(M):
    P, Y = map(int, input().split())

    Pm[i], Ym[i] = P, Y

    ym[i] = Y

    D[Y] = i

ym.sort()

for i in range(M):
    k = D[ym[i]]

    # 0-indexed
    Cn[Pm[k] - 1] += 1
    Am[k] = [Pm[k], Cn[Pm[k] - 1]]

for i in range(M):
    print('{:06d}{:06d}'.format(Am[i][0], Am[i][1]))
