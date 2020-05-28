def main():
    N, M = map(int, input().split())
    *A, = map(int, input().split())
    print(-1 if N < sum(A) else N - sum(A))
    return


main()
