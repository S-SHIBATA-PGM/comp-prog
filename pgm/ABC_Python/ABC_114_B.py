S = input()
num = 753
ans = 999

for i in range(len(S) - 2):
    cur = int(S[i:i + 3])
    if (abs(num - cur) < ans):
        ans = abs(num - cur)

print(ans)
