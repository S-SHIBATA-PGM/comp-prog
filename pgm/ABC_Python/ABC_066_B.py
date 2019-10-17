S = input()

S = S[:-2]

flg = True

while flg:
    flg = False
    x = 0
    for i in range(len(S) // 2):
        if S[x] != S[len(S) // 2 + x]:
            flg = True
            S = S[:-2]
            break
        x += 1

print(len(S))
