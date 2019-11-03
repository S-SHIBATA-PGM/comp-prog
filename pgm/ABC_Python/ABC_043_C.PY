def main():
    N, *an = map(int, open(0).read().split())
    print(min(sum((ai - (sum(an) // N)) ** 2 for ai in an),
              sum((ai + (-sum(an) // N)) ** 2 for ai in an)))
    return


main()

