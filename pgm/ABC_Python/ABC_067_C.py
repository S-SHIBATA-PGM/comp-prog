from itertools import accumulate


def main():
    N, *a = map(int, open(0).read().split())
    a = list(accumulate(a))
    total = a[-1]
    print(min(abs(total - 2 * i) for i in a[:-1]))
    return


main()
