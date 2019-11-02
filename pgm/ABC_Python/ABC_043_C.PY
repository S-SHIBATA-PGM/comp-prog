INF = int(1e9 + 7)


def main():
    N, *an = map(int, open(0).read().split())
    ans = INF
    for i in range(min(an), max(an) + 1):
        tmp = 0
        for ai in an:
            tmp += (ai - i) ** 2
        ans = min(ans, tmp)
    print(ans)
    return


main()

