o = "o"


def main():
    R, C, K, *s = open(0).read().split()
    R = int(R)
    C = int(C)
    K = int(K)
    board = [[0 for j in range(C)] for i in range(R)]
    for i in range(R):
        for j in range(C):
            if o == s[i][j]:
                board[i][j] = 1
    for i in range(1, R):
        for j in range(C):
            if board[i][j]:
                board[i][j] = board[i][j] + board[i - 1][j]
    ans = 0
    for i in range(K - 1, R - K + 1):
        for j in range(K - 1, C - K + 1):
            for k in range(j - K + 1, j + K):
                if board[i + K - (1 + abs(k - j))][k]\
                        < 2 * K - 1 - 2 * abs(k - j):
                    break
            else:
                ans += 1
    print(ans)
    return


main()

