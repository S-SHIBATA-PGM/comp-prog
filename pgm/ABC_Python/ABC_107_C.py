MAX_D = 300000001


def main():
    N, K, *xn = map(int, open(0).read().split())
    if 0 < xn[0]:
        print(xn[K - 1])
        return

    if xn[N - 1] < 0:
        print(abs(xn[N - K]))
        return

    ans = MAX_D

    for i in range(N - K + 1):
        if xn[i + K - 1] < 0 and i + K <= N - 1 and 0 < xn[i + K]:
            ans = min(ans, abs(xn[i]))

        elif 0 < xn[i]:
            if 0 != i:
                if xn[i - 1] < 0:
                    ans = min(ans, abs(xn[i + K - 1]))
                else:
                    break

        elif 0 <= xn[i + K - 1]:
            ans = min(ans,
                      2 * abs(xn[i]) + abs(xn[i + K - 1]),
                      abs(xn[i]) + 2 * abs(xn[i + K - 1]))

    print(ans)
    return


main()
