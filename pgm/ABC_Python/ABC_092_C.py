def main():
    N = int(input())
    A = [0] + [int(i) for i in input().split()] + [0]
    l = [abs(A[i + 1] - A[i]) for i in range(N + 1)]
    num = sum(l)
    print("\n".join(
        [str(num - l[i] - l[i + 1] + abs(A[i] - A[i + 2]))
         for i in range(N)]))

    return


main()
