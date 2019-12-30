input()
S, T = input().split()
ans = []
for s, t in zip(S, T):
    ans.append(s)
    ans.append(t)
print("".join(ans))
