INF = 1000000007

input = open(0).read

N, K, *h = map(int, input().split())


def main():

    h.sort()

    ans = INF

    for i in range(N - K + 1):
        ans = min(ans, h[i + K - 1] - h[i])

    print(ans)
    return


main()
