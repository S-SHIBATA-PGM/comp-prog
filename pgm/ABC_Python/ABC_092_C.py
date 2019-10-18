input = open(0).read

N, *A = [int(i) for i in input().split()]


def main():
    l = [abs(A[i + 1] - A[i]) for i in range(N - 1)]

    num = sum(l)

    print(num - l[0] + abs(A[1]) + abs(A[-1]))

    if N != 2:
        print("\n".join(
            [str(num - l[i] - l[i + 1]
                 + abs(A[i] - A[i + 2])
                 + abs(A[0]) + abs(A[-1])) for i in range(N - 2)]))

    print(num - l[-1] + abs(A[0]) + abs(A[-2]))
    return


main()
