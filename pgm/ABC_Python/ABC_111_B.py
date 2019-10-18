N = int(input())

while True:
    s = str(N)
    if s[0] == s[1] == s[2]:
        ans = N
        break
    N += 1

print(ans)
