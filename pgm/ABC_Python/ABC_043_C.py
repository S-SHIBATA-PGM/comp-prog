def main():
    N, *an = map(int, open(0).read().split())
    print(sum((ai - round(sum(an) / N)) ** 2 for ai in an))
    return


main()

