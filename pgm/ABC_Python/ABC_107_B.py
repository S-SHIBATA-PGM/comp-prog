H, W = map(int, input().split())

l = []

for i in range(H):
    l.append(input())

y = [False] * H
x = [False] * W

for i in range(H):
    flg = True
    for j in range(W):
        if l[i][j] != '.':
            flg = False
            break
    if flg:
        y[i] = True

for i in range(W):
    flg = True
    for j in range(H):
        if l[j][i] != '.':
            flg = False
            break
    if flg:
        x[i] = True

for i in range(H):
    if y[i]:
        continue
    for j in range(W):
        if x[j]:
            continue
        print(l[i][j], end='')
    print()
