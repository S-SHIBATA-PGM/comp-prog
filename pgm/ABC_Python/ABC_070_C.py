N = int(input())


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


def lcm(a, b):
    g = gcd(a, b)

    return a * (b // g)


def main():
    ans = 1

    for i in range(N):
        ans = lcm(ans, int(input()))

    print(ans)
    return


main()
