from itertools import accumulate


def main():
    N, *a = map(int, open(0).read().split())
    a = list(accumulate(a))
    total = a[-1]
    print(min(abs(2 * i - total) for i in a[:-1]))
    return


main()

