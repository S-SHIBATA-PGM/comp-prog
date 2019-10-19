from itertools import accumulate


def main():
    N, *a = map(int, open(0).read().split())
    a = list(accumulate(a))
    total = a[-1]
    print(min(abs(2 * a[i] - total) for i in range(N - 1)))
    return


main()
