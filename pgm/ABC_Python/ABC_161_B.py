def main():
    N, M = map(int, input().split())
    *A, = map(int, input().split())
    A.sort(reverse=True)
    if sum(A) / (4 * M) <= A[M - 1]:
        print("Yes")
    else:
        print("No")
    return


main()
