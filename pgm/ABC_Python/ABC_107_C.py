def main():
    N, K, *xn = map(int, open(0).read().split())
    ans = int(1e9 + 7)
    for xl, xr in zip(xn, xn[K - 1:]):
        t = xr - xl + min(abs(xl), abs(xr))
        ans = t if t < ans else ans
    print(ans)
    return


main()
