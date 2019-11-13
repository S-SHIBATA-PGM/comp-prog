import numpy as np
from sys import stdin
INF = int(1e9+7)


def main():
    lines = stdin.readlines()
    R, C, K = map(int, lines[0].split())
    s = np.frombuffer(
        "".join(line.strip() for line in lines[1:]).encode("utf-8"), "|S1"
    ).reshape(R, -1)
    board = np.full((R + 2, C + 2), b"x", dtype="|S1")
    board[1:-1, 1:-1] = s
    d = np.full_like(board, INF, dtype=np.int32)
    d[board == b"x"] = 0
    for i in range(1, C + 1):
        np.minimum(d[:, i - 1] + 1, d[:, i], out=d[:, i])
    for i in range(C, 0, -1):
        np.minimum(d[:, i + 1] + 1, d[:, i], out=d[:, i])
    for i in range(1, R + 1):
        np.minimum(d[i - 1, :] + 1, d[i, :], out=d[i, :])
    for i in range(R, 0, -1):
        np.minimum(d[i + 1, :] + 1, d[i, :], out=d[i, :])
    print(np.count_nonzero(K <= d))
    return


main()

