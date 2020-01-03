def gcd(a, b):
    while b:
        a, b = b, a % b
    return a


def main():
    N, X, *xn = map(int, open(0).read().split())
    ans = None
    for x in xn:
        if ans is None:
            ans = abs(X - xn[0])
        elif abs(X - x) % ans:
            ans = gcd(ans, abs(X - x))
    print(ans)
    return


main()
