INF = int(1e9 + 7)


def factorial(x):
    FCT = 1
    for i in range(2, x + 1):
        FCT = i * FCT % INF
    return FCT


def main():
    N, M = map(int, input().split())
    if N == M:
        print(2 * factorial(min(N, M)) ** 2 % INF)
    elif abs(N - M) <= 1:
        print(factorial(min(N, M)) ** 2 * max(N, M) % INF)
    else:
        print(0)

    return


main()

