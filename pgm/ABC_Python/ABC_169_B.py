INF = int(1e18)


def main():
    N, *A, = map(int, open(0).read().split())
    ans = 1
    for a in A:
        ans *= a
    print(-1 if INF < ans else ans)
    return


main()
