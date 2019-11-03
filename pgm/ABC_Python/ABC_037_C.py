def main():
    N, K, *a = map(int, open(0).read().split())
    ans = accum = sum(a[:K])
    for i in range(N - K):
        accum += a[i + K] - a[i]
        ans += accum
    print(ans)
    return


main()

