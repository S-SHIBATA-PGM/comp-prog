def main():
    N, M = map(int, input().split())
    if N > M // 2:
        print(M // 2)
    else:
        print((2 * N + M) // 4)
    return


main()
