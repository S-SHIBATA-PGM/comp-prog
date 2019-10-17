from sys import stdin
INF = int(1e9+7)


def modadd(a, b):
    # aとbを足した値をmodする(a + b mod p)
    return (a + b) % INF


def main():
    lines = stdin.readlines()
    N = int(lines[0].split()[0])
    a = [True] * (N + 1)
    for i in map(int, lines[1:]):
        a[i] = False
    dp = [0] * (N + 1)
    dp[:2] = 1, 1 if a[1] else 0
    for i in range(2, N + 1):
        if a[i]:
            dp[i] = modadd(dp[i - 1], dp[i - 2])
    print(dp[N])
    return


main()
