def main():
    N, K, *h = map(int, open(0).read().split())
    h.sort()
    print(min(j - i for i, j in zip(h, h[K - 1:])))
    return


main()
