def main():
    N, K, M = map(int, input().split())
    *A, = map(int, input().split())
    ans = N * M - sum(A)
    print(0 if ans < 0 else -1 if K < ans else ans)
    return


main()
