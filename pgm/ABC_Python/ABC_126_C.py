import math


def main():
    N, K = map(int, input().split())
    print((max(0, N - K + 1) + sum(
        max(0, N - (math.ceil(K * (1 / 2) ** i)) + 1) * (1 / 2) ** i
        - max(0, N - (math.ceil(K * (1 / 2) ** (i - 1))) + 1) * (1 / 2) ** i
        for i in range(1, int(math.log2(K)) + 1 + 1))) / N)
    return


main()

