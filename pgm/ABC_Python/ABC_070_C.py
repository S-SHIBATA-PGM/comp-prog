N = int(input())
Tn = [int(input()) for i in range(N)]


def gcd(a, b):
    result = a
    k = 0
    n = b

    while True:
        k = result % n
        result = n
        n = k
        if k == 0:
            break

    return result


def gcd_n(numbers):
    l = numbers[0]

    for i in range(len(numbers)):
        l = gcd(l, numbers[i])

    return l


def lcm(a, b):
    g = gcd(a, b)

    return a * (b // g)


def lcm_n(numbers):
    l = numbers[0]

    for i in range(len(numbers)):
        l = lcm(l, numbers[i])

    return l


def main():
    print(lcm_n(Tn))
    return


main()
