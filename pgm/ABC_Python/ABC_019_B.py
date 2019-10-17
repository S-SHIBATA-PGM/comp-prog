s = input()

ans = ''

cnt = 1

c = s[0]

for i in range(1, len(s)):
    if c == s[i]:
        cnt += 1
    else:
        ans += c + str(cnt)
        cnt = 1

    c = s[i]

print(ans + c + str(cnt))
