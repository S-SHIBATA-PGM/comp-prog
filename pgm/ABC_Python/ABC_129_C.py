def main():
    INF = int(1e9+7)
    N, M, *a = map(int, open(0).read().split())
    a = set(a)
    dp = [0] * (N + 1)
    dp[:2] = 1, 1 if 1 not in a else 0
    for i in range(2, N + 1):
        if i not in a:
            dp[i] = (dp[i - 1] + dp[i - 2]) % INF
    print(dp[-1])
    return


main()

