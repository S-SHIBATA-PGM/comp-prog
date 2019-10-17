n, X = map(int, input().split())
a = [int(i) for i in input().split()]

ans = 0

for i in range(X.bit_length()):
    if X % 2:
        ans += a[i]
    X //= 2

print(ans)
