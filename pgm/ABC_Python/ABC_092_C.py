def main():
    N = int(input())
    A = [0] + [int(i) for i in input().split()] + [0]
    a = [abs(A[i] - A[i + 1]) for i in range(N + 1)]
    num = sum(a)
    print("\n".join(
        [str(num - a[i] - a[i + 1] + abs(A[i] - A[i + 2]))
         for i in range(N)]))

    return


main()
