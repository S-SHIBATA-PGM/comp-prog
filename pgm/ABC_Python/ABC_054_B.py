def match(y, x):
    ret = True
    for i in range(M):
        for j in range(M):
            if A[y + i][x + j] != B[i][j]:
                ret = False
    return ret


N, M = map(int, input().split())

A = []

for i in range(N):
    A.append(list(input()))

B = []

for i in range(M):
    B.append(list(input()))

flg = False

for i in range(N - M + 1):
    for j in range(N - M + 1):
        if match(i, j):
            flg = True

print("Yes" if flg else "No")
