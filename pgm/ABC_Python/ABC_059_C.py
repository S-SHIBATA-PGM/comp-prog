def f(flg, an):
    accum = 0
    ret = 0
    for i, ai in enumerate(an):
        accum += ai
        if flg:
            flg = False
            if accum <= 0:
                ret += -accum + 1
                accum = 1
        else:
            flg = True
            if 0 <= accum:
                ret += accum + 1
                accum = -1
    return ret


def main():
    n, *an = map(int, open(0).read().split())
    print(min(f(False, an), f(True, an)))
    return


main()

