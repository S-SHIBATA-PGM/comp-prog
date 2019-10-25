import math


def divisor(div, n):
    # 約数
    ini = 1 if n % 2 else 2
    for i in range(ini, int(math.sqrt(n)) + 1, 2):
        if n % i == 0:
            div.append([i, n // i])


def main():
    N = int(input())
    div = []
    divisor(div, N)
    print(max(int(math.log10(div[-1][0]) + 1),
              int(math.log10(div[-1][1]) + 1)))
    return


main()
