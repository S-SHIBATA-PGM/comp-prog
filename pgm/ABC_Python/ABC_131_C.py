A, B, C, D = map(int, input().split())


def gcd(a, b):
    while b:
        a, b = b, a % b
    return a


def lcm(a, b):
    g = gcd(a, b)

    return a * (b // g)


def f(n):
    return n - n // C - n // D + n // lcm(C, D)


def main():
    print(f(B) - f(A - 1))
    return


main()
