N = int(input())

p = []
for i in range(N):
    p.append(int(input()))

p.sort()

ans = 0
for i in range(N - 1):
    ans += p[i]

ans += p[N - 1] // 2
print(ans)
