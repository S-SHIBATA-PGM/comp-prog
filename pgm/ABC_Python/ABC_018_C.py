from sys import stdin
import numpy as np
INF = int(1e9+7)
o = b"o"
x = b"x"

read = stdin.buffer.read
readline = stdin.buffer.readline
readlines = stdin.buffer.readlines


def main():
    R, C, K = map(int, readline().split())
    s = np.frombuffer(read(), "|S1").reshape(R, -1)[:, :C]
    board = np.full((R + 2, C + 2), x, dtype="|S1")
    board[1:-1, 1:-1] = s
    d = np.full_like(board, 0, dtype=np.int32)
    d[board == o] = 1
    accum = d.copy()
    # 最初だけ max
    for i in range(1, C + 1):
        for j in range(1, R + 1):
            if accum[j, i]:
                accum[j, i] = max(accum[j, i], d[j, i] + accum[j, i - 1])
    for i in range(C, 0, -1):
        for j in range(1, R + 1):
            if accum[j, i]:
                accum[j, i] = min(accum[j, i], d[j, i] + accum[j, i + 1])
    for i in range(1, R + 1):
        for j in range(1, C + 1):
            if accum[i, j]:
                accum[i, j] = min(accum[i, j], d[i, j] + accum[i - 1, j])
    for i in range(R, 0, -1):
        for j in range(1, C + 1):
            if accum[i, j]:
                accum[i, j] = min(accum[i, j], d[i, j] + accum[i + 1, j])
    print(np.count_nonzero(K <= accum))
    return


main()

