def check(ai, ratemax, lst):
    if 3199 < ai:
        ratemax += 1
    else:
        lst[ai // 400] = 1
    return ratemax


def main():
    N, *a = map(int, open(0).read().split())
    lst = [0] * 8
    ratemax = 0
    for ai in a:
        ratemax = check(ai, ratemax, lst)
    print(sum(lst) if sum(lst) else 1, sum(lst) + ratemax)
    return


main()
