def main():
    N, *h = map(int, open(0).read().split())
    ans = h[0]
    for i in range(N - 1):
        ans += max(h[i + 1] - h[i], 0)
    print(ans)
    return


main()
