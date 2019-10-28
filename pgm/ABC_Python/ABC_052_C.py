from collections import defaultdict
INF = int(1e9+7)


def primeFactor(n, pf):
    # 素因数分解
    if n == 1:
        return
    f = 2
    while (f * f <= n):
        if (n % f == 0):
            pf[f] += 1
            n = n // f
        else:
            f += 1
    pf[n] += 1


def main():
    N = int(input())
    d = defaultdict(lambda: 0)
    for i in range(1, N + 1):
        primeFactor(i, d)
    ans = 1
    for i in d.values():
        ans *= i + 1
        ans %= INF
    print(ans)
    return


main()
