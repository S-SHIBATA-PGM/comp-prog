N, M = map(int, input().split())

l = []

for i in range(N):
    A = [int(x) for x in input().split()]

    for j in range(1, A[0] + 1):
        l.append(A[j])

ans = 0

for i in range(M + 1):
    if l.count(i) == N:
        ans += 1

print(ans)
