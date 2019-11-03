def main():
    N, *aN = map(int, open(0).read().split())
    pre = 0
    ans = 0
    tmp = 0
    for ai in aN:
        if pre < ai:
            tmp += 1
        else:
            tmp = 1
        ans += tmp
        pre = ai
    print(ans)
    return


main()

