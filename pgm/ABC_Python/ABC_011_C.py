INF = int(1e9+7)


def main():
    N, *NG = map(int, open(0).read().split())
    dp = [INF] * (N + 1)
    dp[N] = 0
    for i in range(N, -1, -1):
        for j in range(1, 4):
            if i - j < 0:
                break
            if i - j not in NG:
                dp[i - j] = min(dp[i - j], dp[i] + 1)
    print("YES" if N not in NG and dp[0] <= 100 else "NO")
    return


main()

