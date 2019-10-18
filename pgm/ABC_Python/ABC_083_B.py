N, A, B = map(int, input().split())

ans = 0

for i in range(1, N + 1):
    s = str(i)

    num = 0

    for j in range(len(s)):
        num += int(s[j])

    if (A <= num <= B):
        ans += i

print(ans)
