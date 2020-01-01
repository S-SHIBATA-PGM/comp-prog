def main():
    n, *v = map(int, open(0).read().split())
    be = [0] * int(1e5)
    bo = [0] * int(1e5)
    for e, o in zip(*[iter(v)] * 2):
        be[e - 1] += 1
        bo[o - 1] += 1
    ve = max(be)
    vo = max(bo)
    ke = be.index(ve)
    ko = bo.index(vo)
    if ke == ko:
        be[ke] = 0
        bo[ko] = 0
        print(min(n - ve - max(bo), n - vo - max(be)))
    else:
        print(n - ve - vo)
    return


main()
