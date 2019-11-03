def main():
    N, *a = map(int, open(0).read().split())
    dp = [0] * N
    dp[0] = 0
    dp[1] = abs(a[1] - a[0])
    for i in range(2, N):
        dp[i] = min(dp[i - 2] + abs(a[i] - a[i - 2]),
                    dp[i - 1] + abs(a[i] - a[i - 1]))
    print(dp[N - 1])
    return


main()

