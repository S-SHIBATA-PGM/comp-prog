from functools import reduce


def gcd(a, b):
    while b:
        a, b = b, a % b
    return a


def gcd_n(numbers):
    return reduce(gcd, numbers)


def main():
    N, X, *x = map(int, open(0).read().split())
    x = [abs(X - int(i)) for i in x]
    print(gcd_n(x))
    return


main()
