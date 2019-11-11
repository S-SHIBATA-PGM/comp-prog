def main():
    N, *a = map(int, open(0).read().split())
    s = set()
    for ai in a:
        while ai % 2 == 0 and 1 < ai:
            ai //= 2
        s.add(ai)
    print(len(s))
    return


main()

