N, M = map(int, input().split())

l = [0] * N

for i in range(M):
    # 0-indexed
    a, b = [int(i) - 1 for i in input().split()]

    l[a] += 1
    l[b] += 1

for i in range(N):
    print(l[i])
