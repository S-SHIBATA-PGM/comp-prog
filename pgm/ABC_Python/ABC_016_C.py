from scipy.sparse.csgraph import floyd_warshall


def main():
    N, M, *AB = map(int, open(0).read().split())
    MAX_L = N ** 2
    d = [[MAX_L] * N for i in range(N)]
    for A, B in zip(*[iter(AB)] * 2):
        # 0-based indexing
        A -= 1
        B -= 1
        d[A][B] = 1
        d[B][A] = 1
    # Warshall-Floyd
    d = floyd_warshall(d)
    for di in d:
        ans = 0
        for dij in di:
            if dij == 2:
                ans += 1
        print(ans)


main()

