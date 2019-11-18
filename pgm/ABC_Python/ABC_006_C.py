def main():
    N, M = map(int, input().split())
    for adult in range(N + 1):
        for old in range(2):
            baby = N - adult - old
            if baby < 0:
                break
            if adult * 2 + baby * 4 + old * 3 == M:
                print(adult, old, baby)
                return
    print(-1, -1, -1)
    return


main()

