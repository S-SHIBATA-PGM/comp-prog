from sys import stdin
from scipy.sparse.csgraph import floyd_warshall
MAX_L = 100000


class Edge:
    def __init__(self, to, cost):
        # 頂点番号 最短時間
        self.to = to
        self.cost = cost


def main():
    lines = stdin.readlines()
    N, M = map(int, lines[0].split())
    d = [[N * MAX_L + 1] * N for i in range(N)]
    for i in range(N):
        d[i][i] = 0
    adjacent = []
    for ui, vi, li in [[int(x) for x in line.split()] for line in lines[1:]]:
        # 0-based indexing
        ui -= 1
        vi -= 1
        # 最短閉路問題を最短経路問題として扱う
        # 頂点1に隣接する辺
        if ui == 0:
            adjacent.append(Edge(vi, li))
        else:
            # 頂点1に隣接する辺以外
            d[ui][vi] = li
            d[vi][ui] = li
    # Warshall–Floyd
    d = floyd_warshall(d)
    ans = MAX_L
    for u in adjacent:
        for v in adjacent:
            if u.to == v.to:
                continue
            ans = min(ans, int(d[u.to][v.to]) + u.cost + v.cost)
    print(ans if ans != MAX_L else -1)
    return


main()

