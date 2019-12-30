def main():
    N, M, *PY = map(int, open(0).read().split())
    lst = []
    ans = [""] * M
    for k, py in enumerate(zip(*[iter(PY)] * 2)):
        lst.append((py[0], py[1], k))
    lst.sort()
    pre, num = lst[0][0], 1
    for cur, y, i in lst:
        if pre != cur:
            num = 1
        ans[i] = "{:06}{:06}".format(cur, num)
        num += 1
        pre = cur
    print("\n".join(ans))
    return


main()
