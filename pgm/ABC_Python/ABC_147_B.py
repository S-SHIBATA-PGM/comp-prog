S = input()
ans = 0
for s1, s2 in zip(S[: len(S) // 2:], S[: len(S) // 2 - 1:-1]):
    if s1 != s2:
        ans += 1
print(ans)
