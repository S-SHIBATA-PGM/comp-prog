def gcd(a, b):
    while b:
        a, b = b, a % b
    return a


def main():
    N, X, *xn = map(int, open(0).read().split())
    ans = abs(X - xn[0])
    for x in xn:
        dif = abs(X - x)
        if dif % ans:
            ans = gcd(ans, dif)
    print(ans)
    return


main()
