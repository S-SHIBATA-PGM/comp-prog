def main():
    N, *a = map(int, open(0).read().split())
    print(sum([bin(ai)[::-1].index("1") for ai in a]))
    return


main()
