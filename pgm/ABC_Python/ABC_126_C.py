import math


def main():
    N, K = map(int, input().split())
    print((max(0, N - K + 1) + sum(
        max(0, N - (math.ceil(K * 0.5 ** i)) + 1) * 0.5 ** i
        - max(0, N - (math.ceil(K * 0.5 ** (i - 1))) + 1) * 0.5 ** i
        for i in range(1, len(bin(K)) - 2 + 1))) / N)
    return


main()
