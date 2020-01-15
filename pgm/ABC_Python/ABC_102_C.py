def main():
    N, *A = map(int, open(0).read().split())
    for i in range(N):
        A[i] -= i + 1
    A.sort()
    print(sum(A[N // 2 + N % 2:]) - sum(A[:N // 2]))
    return


main()
