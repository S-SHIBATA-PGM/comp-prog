S = input()

flg = True

if S[0] != 'A':
    flg = False

cnt = 0

for i in range(2, len(S) - 1):
    if S[i] == 'C':
        cnt += 1

if cnt != 1:
    flg = False

cnt = 0

for i in range(len(S)):
    if 'A' <= S[i] <= 'Z':
        cnt += 1

if cnt != 2:
    flg = False

print("AC" if flg else "WA")
