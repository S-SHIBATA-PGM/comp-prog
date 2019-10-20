from collections import defaultdict


def check(ai, ratemax, d):
    if 1 <= ai <= 399:
        d[0] += 1
    elif 400 <= ai <= 799:
        d[1] += 1
    elif 800 <= ai <= 1199:
        d[2] += 1
    elif 1200 <= ai <= 1599:
        d[3] += 1
    elif 1600 <= ai <= 1999:
        d[4] += 1
    elif 2000 <= ai <= 2399:
        d[5] += 1
    elif 2400 <= ai <= 2799:
        d[6] += 1
    elif 2800 <= ai <= 3199:
        d[7] += 1
    else:
        ratemax += 1
    return ratemax


def main():
    N, *a = map(int, open(0).read().split())
    d = defaultdict(lambda: 0)
    ratemax = 0
    for ai in a:
        ratemax = check(ai, ratemax, d)
    print(len(d) if len(d) else 1, len(d) + ratemax)
    return


main()
