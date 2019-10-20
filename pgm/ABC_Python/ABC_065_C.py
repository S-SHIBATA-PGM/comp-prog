from functools import reduce
INF = int(1e9 + 7)


def modmulti(a, b):
    # aとbを掛けた値をmodする(a * b mod p)
    return a * b % INF


def factorial(x):
    FCT = 1
    FCT = reduce(modmulti, range(2, x + 1), FCT)
    return FCT


def main():
    N, M = map(int, input().split())
    MIN_NM = factorial(min(N, M))
    if N == M or N + 1 == M or N == M + 1:
        print(modmulti(2, modmulti(MIN_NM, MIN_NM))
              if N == M else modmulti(MIN_NM, modmulti(MIN_NM, max(N, M))))
    else:
        print(0)

    return


main()
