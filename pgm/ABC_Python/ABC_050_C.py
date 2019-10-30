INF = int(1e9+7)


def main():
    N, *An = map(int, open(0).read().split())
    An.sort()
    if N % 2:
        if [0] + [i for i in range(2, N, 2) for j in range(2)] == An:
            print(2 ** (N // 2) % INF)
            return
    else:
        if [i for i in range(1, N, 2) for j in range(2)] == An:
            print(2 ** (N // 2) % INF)
            return
    print(0)
    return


main()

