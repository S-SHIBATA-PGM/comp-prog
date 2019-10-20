from collections import defaultdict


def check(ai, ratemax, d):
    if 3199 < ai:
        ratemax += 1
    else:
        d[ai // 400] += 1
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
