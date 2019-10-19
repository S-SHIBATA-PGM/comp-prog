INF = float('inf')


def main():
    N, *a = map(int, open(0).read().split())
    ans = INF
    tmp = 0
    total = sum(a)
    for i in range(N - 1):
        tmp += a[i]
        ans = min(ans, abs(2 * tmp - total))
    print(ans)
    return


main()
