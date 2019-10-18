N = int(input())


def main():
    A1 = [int(i) for i in input().split()]
    A2 = [int(i) for i in input().split()]

    for i in range(N - 1):
        A1[i + 1] += A1[i]

    for i in range(N - 1, 0, -1):
        A2[i - 1] += A2[i]

    print(max([A1[i] + A2[i] for i in range(N)]))

    return


main()
