N, S, T = map(int, input().split())
W = int(input())
ans = 0

if S <= W <= T:
    ans += 1

for i in range(0, N - 1, 1):
    A = int(input())
    W += A
    if S <= W <= T:
        ans += 1

print(ans)
