from sys import stdin
from copy import deepcopy
INF = int(1e9+7)
o = "o"
x = "x"

read = stdin.read
readline = stdin.readline
readlines = stdin.readlines


def main():
    R, C, K = map(int, readline().split())
    s = readlines()
    board = [[x] * (C + 2) for i in range(R + 2)]
    for i in range(1, R + 1):
        for j in range(1, C + 1):
            board[i][j] = s[i - 1][j - 1]
    d = [[1 if j == o else 0 for j in i] for i in board]
    accum = deepcopy(d)
    # 最初だけ max
    for i in range(1, C + 1):
        for j in range(1, R + 1):
            if accum[j][i]:
                accum[j][i] = max(accum[j][i], d[j][i] + accum[j][i - 1])
    for i in range(C, 0, -1):
        for j in range(1, R + 1):
            if accum[j][i]:
                accum[j][i] = min(accum[j][i], d[j][i] + accum[j][i + 1])
    for i in range(1, R + 1):
        for j in range(1, C + 1):
            if accum[i][j]:
                accum[i][j] = min(accum[i][j], d[i][j] + accum[i - 1][j])
    for i in range(R, 0, -1):
        for j in range(1, C + 1):
            if accum[i][j]:
                accum[i][j] = min(accum[i][j], d[i][j] + accum[i + 1][j])
    print(sum(1 for i in accum for j in i if K <= j))
    return


main()

