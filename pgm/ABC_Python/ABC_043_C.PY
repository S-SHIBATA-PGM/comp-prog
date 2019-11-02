def main():
    N, *an = map(int, open(0).read().split())
    print(min(sum((ai - (max(an) + min(an)) // 2) ** 2 for ai in an),
              sum((ai + (-(max(an) + min(an)) // 2)) ** 2 for ai in an)))
    return


main()

