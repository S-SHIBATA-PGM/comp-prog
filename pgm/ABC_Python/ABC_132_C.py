def main():
    N, *d = map(int, open(0).read().split())
    d.sort()
    print(d[N // 2] - d[N // 2 - 1])
    return


main()
