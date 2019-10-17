N, Q = map(int, input().split())

a = [0] * N

for i in range(Q):
    # 0-indexed
    L, R, T = [int(i) for i in input().split()]
    L -= 1
    R -= 1

    for j in range(L, R + 1):
        a[j] = T

for i in range(N):
    print(a[i])
