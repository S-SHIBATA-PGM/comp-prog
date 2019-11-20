def divisor(n):
    # 約数
    return [[i, n // i] for i in range(1, int(n ** 0.5) + 1) if n % i == 0]


def main():
    N = int(input())
    rslt = divisor(N)
    print(rslt[-1][0] + rslt[-1][1] - 2)
    return


main()
