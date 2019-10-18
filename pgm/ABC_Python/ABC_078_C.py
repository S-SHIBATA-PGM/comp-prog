N, M = map(int, input().split())


def main():
    print((1900 * M + 100 * (N - M)) * 2 ** M)
    return


main()
