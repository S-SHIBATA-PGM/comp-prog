from functools import reduce
INF = int(1e9+7)


def main():
    N, *An = map(int, open(0).read().split())
    An.sort()
    if N % 2:
        if [0] + [i for i in range(2, N, 2) for j in range(2)] == An:
            print(reduce(lambda x, y: (x << 1) % INF, range(N // 2), 1))
            return
    else:
        if [i for i in range(1, N, 2) for j in range(2)] == An:
            print(reduce(lambda x, y: (x << 1) % INF, range(N // 2), 1))
            return
    print(0)
    return


main()
