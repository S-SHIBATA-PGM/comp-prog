def gcd(a, b):
    while b:
        a, b = b, a % b
    return a


def main():
    N, X, *xn = map(int, open(0).read().split())
    ans = None
    for x in xn:
        if ans is not None:
            if abs(X - x) % ans:
                ans = gcd(ans, abs(X - x))
        else:
            ans = abs(X - xn[0])
    print(ans)
    return


main()
