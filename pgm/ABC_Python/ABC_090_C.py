N, M = map(int, input().split())


def main():
    if N - 2 < 0 or M - 2 < 0:
        print(max(1, N - 2) * max(1, M - 2))
    else:
        print((N - 2) * (M - 2))

    return


main()
