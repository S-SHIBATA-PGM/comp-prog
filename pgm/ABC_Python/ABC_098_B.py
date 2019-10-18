N = int(input())
S = input()

ans = 0
num = len(S)

for i in range(num):
    X = set(S[:i + 1])
    Y = set(S[i + 1:num])
    ans = max(ans, len(X & Y))

print(ans)
