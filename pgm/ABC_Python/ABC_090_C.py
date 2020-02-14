def main():
    N, M = map(int, input().split())
    if 1 < N:
        N -= 2
    if 1 < M:
        M -= 2
    print(N * M)
    return


main()
