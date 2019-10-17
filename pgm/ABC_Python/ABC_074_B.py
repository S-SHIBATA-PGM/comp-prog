N = int(input())
K = int(input())
x = map(int, input().split())

ans = 0

for i in x:
    if i < K - i:
        ans += 2 * i
    else:
        ans += 2 * (K - i)

print(ans)
