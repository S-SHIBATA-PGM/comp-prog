def divisor(n):
    # 約数
    return [[i, n // i] for i in range(1, int(n ** 0.5) + 1) if n % i == 0]


def main():
    N = int(input())
    print(divisor(N)[-1][0] + divisor(N)[-1][1] - 2)
    return


main()
