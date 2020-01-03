def gcd(a, b):
    while b:
        a, b = b, a % b
    return a


def main():
    N, X, *xn = map(int, open(0).read().split())
    ans = abs(X - xn[0])
    for x in xn:
        df = abs(X - x)
        if df % ans:
            ans = gcd(ans, df)
    print(ans)
    return


main()
