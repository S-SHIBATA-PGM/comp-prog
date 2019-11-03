from itertools import accumulate


def main():
    N, *aN = map(int, open(0).read().split())
    tbl = list(accumulate(i for i in range(1, N + 1)))
    ans = 0
    tmp = 1
    for a1, a2 in zip(aN[0:], aN[1:]):
        if a1 < a2:
            tmp += 1
        else:
            ans += tbl[tmp - 1]
            tmp = 1
    ans += tbl[tmp - 1]
    print(ans)
    return


main()

