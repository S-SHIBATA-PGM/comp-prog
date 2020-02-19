def main():
    N, K, M, *A = map(int, open(0).read().split())
    ans = N * M - sum(A)
    print(0 if ans < 0 else -1 if K < ans else ans)
    return


main()
