def main():
    N, A, *x = map(int, open(0).read().split())
    MAX_A_x = max(A, max(x))
    x = [xi - A for xi in x]
    # dp[i][j]
    # i 選んだ枚数 0 <= i <= N
    # j 合計 0 <= j <= 2 * N * MAX_A_x
    dp = [[0] * (2 * N * MAX_A_x + 1) for i in range(N + 1)]
    dp[0][N * MAX_A_x] = 1
    for i in range(1, N + 1):
        for j in range(2 * N * MAX_A_x + 1):
            if j - x[i - 1] < 0 or 2 * N * MAX_A_x < j - x[i - 1]:
                dp[i][j] = dp[i - 1][j]
            elif 0 <= j - x[i - 1] <= 2 * N * MAX_A_x:
                dp[i][j] = dp[i - 1][j] + dp[i - 1][j - x[i - 1]]
            else:
                dp[i][j] = 0
    print(dp[N][N * MAX_A_x] - 1)
    return


main()

