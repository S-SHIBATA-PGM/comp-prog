A, B = map(int, input().split())
ans = 0
cur = 1
if cur < B:
    while cur < B:
        cur += A - 1
        ans += 1
print(ans)
