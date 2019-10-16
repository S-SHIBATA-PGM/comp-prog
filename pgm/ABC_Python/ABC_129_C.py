from sys import stdin
INF = int(1e9+7)


def modadd(a, b):
    # aとbを足した値をmodする(a + b mod p)
    return (a + b) % INF


def main():
    lines = stdin.readlines()
    N = int(lines[0].split()[0])
    M = [True] * (N + 1)
    for i in map(int, lines[1:]):
        M[i] = False
    dp = [0] * (N + 1)
    dp[0] = 1
    for cur in range(N + 1):
        for i in range(cur + 1, min(cur + 2, N) + 1):
            if M[i]:
                dp[i] = modadd(dp[cur], dp[i])
    print(dp[N])
    return


main()
