def f(flg, an):
    accum = 0
    ret = 0
    for i, ai in enumerate(an):
        accum += ai
        if i % 2:
            if flg and 0 <= accum:
                ret += accum + 1
                accum = -1
            elif not flg and accum <= 0:
                ret += -accum + 1
                accum = 1
        else:
            if flg and accum <= 0:
                ret += -accum + 1
                accum = 1
            elif not flg and 0 <= accum:
                ret += accum + 1
                accum = -1

    return ret


def main():
    n, *an = map(int, open(0).read().split())
    print(min(f(0, an), f(1, an)))
    return


main()
