INF = float('inf')


def main():
    N, H, A, B, C, D, E = map(int, open(0).read().split())
    # 普通の食事の日数 x
    # 質素な食事の日数 y
    # 0 < H + B * x + D * y - (N - x - y) * E
    # y > ((N - x) * E - B * x - H) / (D + E)
    # y > (-(B + E) * x + N * E - H) / (D + E)
    ans = INF
    for x in range(N + 1):
        y = max(int((-1.0 * (B + E) * x + N * E - H) / (D + E) + 1.0), 0)
        ans = min(ans, A * x + C * y)
    print(ans)
    return


main()

