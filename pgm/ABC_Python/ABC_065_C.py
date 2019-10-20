INF = int(1e9 + 7)
FCT = [0] * (int(1e5) + 1)


def modmulti(a, b):
    # aとbを掛けた値をmodする(a * b mod p)
    return a * b % INF


def factorial(x):
    FCT[0] = 1
    FCT[1] = 1
    for i in range(2, x + 1):
        FCT[i] = modmulti(FCT[i - 1], i)


def main():
    N, M = map(int, input().split())
    if N == M or N + 1 == M or N == M + 1:
        if N < M:
            factorial(M)
        else:
            factorial(N)
        print(modmulti(2, modmulti(FCT[N], FCT[M]))
              if N == M else modmulti(FCT[N], FCT[M]))
    else:
        print(0)

    return


main()

