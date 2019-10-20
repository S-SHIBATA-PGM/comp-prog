from collections import defaultdict


def check(x, ratemax, d):
    if 1 <= x <= 399:
        d[0] += 1
    elif 400 <= x <= 799:
        d[1] += 1
    elif 800 <= x <= 1199:
        d[2] += 1
    elif 1200 <= x <= 1599:
        d[3] += 1
    elif 1600 <= x <= 1999:
        d[4] += 1
    elif 2000 <= x <= 2399:
        d[5] += 1
    elif 2400 <= x <= 2799:
        d[6] += 1
    elif 2800 <= x <= 3199:
        d[7] += 1
    else:
        ratemax += 1
    return ratemax


def main():
    N, *a = map(int, open(0).read().split())
    d = defaultdict(lambda: 0)
    ratemax = 0
    for x in a:
        ratemax = check(x, ratemax, d)
    print(len(d) if len(d) else 1, len(d) + ratemax)
    return


main()
