import sys

input = sys.stdin.readline

N, M = map(int, input().split())

Pm = [0] * M
Ym = [0] * M
ym = [0] * M

Am = [''] * M
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
    Am[k] = str(Pm[k]).rjust(6, '0') + str(Cn[Pm[k] - 1]).rjust(6, '0')

for i in range(M):
    print(Am[i])
