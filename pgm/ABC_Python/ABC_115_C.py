INF = 1000000007

N, K, *h = map(int, open(0).read().split())

h.sort()

ans = INF

for i in range(N - K + 1):
    ans = min(ans, h[i + K - 1] - h[i])

print(ans)
