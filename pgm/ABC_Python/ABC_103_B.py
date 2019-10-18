S = input()
T = input()

flg = False

for i in range(len(S)):
    S = S[-1] + S[:-1]
    if S == T:
        flg = True
        break

print("Yes" if flg else "No")
