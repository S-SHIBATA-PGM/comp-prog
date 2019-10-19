N = int(input())

W = [int(i) for i in input().split()]

ans = 1000000007

for i in range(N):
    ans = min(ans, abs(sum(W[:i]) - sum(W[i:])))

print(ans)
