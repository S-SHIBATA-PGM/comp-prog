N, T = map(int, input().split())

pre = int(input())

ans = 0

for i in range(N - 1):
    cur = int(input())

    if T < cur - pre:
        ans += T
    else:
        ans += cur - pre

    pre = cur

print(ans + T)
