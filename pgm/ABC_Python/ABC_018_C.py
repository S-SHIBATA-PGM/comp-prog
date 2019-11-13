import numpy as np
INF = int(1e9+7)


def main():
    R, C, K, *s = open(0).read().split()
    R = int(R)
    C = int(C)
    K = int(K)
    s = np.frombuffer("".join(s).encode("utf-8"), "|S1").reshape(R, -1)[:, :C]
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

