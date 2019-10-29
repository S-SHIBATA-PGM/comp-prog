from functools import reduce
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
    pf = [0] * (N + 1)
    for i in range(1, N + 1):
        primeFactor(i, pf)
    print(reduce(lambda x, y: x * (y + 1) % INF, pf, 1))
    return


main()

