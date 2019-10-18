A, B = map(int, input().split())
S = input()

flg = True

if (len(S) != A + B + 1):
    flg = False
else:
    for i in range(len(S)):
        if i == A and S[i] != '-':
            flg = False
            break
        elif i != A:
            if S[i] < '0' or '9' < S[i]:
                flg = False
                break

print("Yes" if flg else "No")
