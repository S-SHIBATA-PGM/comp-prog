import math


def divisor(n):
    # 約数
    return [[i, n // i] for i in range(1, int(math.sqrt(n)) + 1) if n % i == 0]


def main():
    N = int(input())
    div = divisor(N)
    print(max(int(math.log10(div[-1][0]) + 1),
              int(math.log10(div[-1][1]) + 1)))
    return


main()
