from functools import reduce


def gcd(a, b):
    while b:
        a, b = b, a % b
    return a


def gcd_n(numbers):
    return reduce(gcd, numbers)


def main():
    N, *A = map(int, open(0).read().split())
    print(gcd_n(A))
    return


main()
