import math


def main():
    N, K = map(int, input().split())
    accum = 0
    for i in range(1, len(bin(K)) - 2 + 1):
        cur = max(0, N - (math.ceil(K * 0.5 ** i)) + 1) * 0.5 ** i
        pre = max(0, N - (math.ceil(K * 0.5 ** (i - 1))) + 1) * 0.5 ** i
        accum += cur - pre
    print((max(0, N - K + 1) + accum) / N)
    return


main()
