from copy import copy
from sys import stdin
INF = int(1e9 + 7)
b = 0
dp = []
gone = []
graph = []


def bfs(start):
    global b, dp, gone, graph
    # 幅優先探索 Breadth-First Search
    # 幅優先探索をしながら経路数え上げ動的計画法
    cur = set()
    nxt = set()
    # スタート地点を設定
    cur.add(start)
    # 行ったことがある
    gone[start] = True
    while cur:
        goalFlg = False
        # 初期化
        nxt.clear()
        for f in cur:
            for t in graph[f]:
                # 行ったことがない
                if not gone[t]:
                    nxt.add(t)
                    dp[t] = (dp[t] + dp[f]) % INF
                    # 目的地
                    if t == b:
                        goalFlg = True
        if goalFlg:
            break
        cur = copy(nxt)
        # 一巡してからまとめて
        for i in nxt:
            gone[i] = True


def main():
    global b, dp, gone, graph
    lines = stdin.readlines()
    N = int(lines[0].split()[0])
    a, b = map(lambda x: int(x) - 1, lines[1].split())
    M = int(lines[2].split()[0])
    graph = [[] for i in range(N)]
    for i in range(M):
        # 0-indexed
        x, y = map(lambda x: int(x) - 1, lines[i + 3].split())
        graph[x].append(y)
        graph[y].append(x)
    gone = [False] * N
    dp = [0] * N
    # 幅優先探索 Breadth-First Search
    # 幅優先探索をしながら経路数え上げ動的計画法
    dp[a] = 1
    bfs(a)
    print(dp[b])
    return


main()

