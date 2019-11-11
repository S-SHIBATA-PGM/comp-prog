from heapq import heappush, heappop
from sys import stdin
MAX_T = 1000000001
G = 'G'
S = 'S'
black = '#'
white = '.'
# 下、右、上、左
dy = [1, 0, -1, 0]
dx = [0, 1, 0, -1]
cost = []
field = []
gone = []
route = []
H = 0
W = 0
T = 0
startX = 0
startY = 0
goalX = 0
goalY = 0


class Edge:
    def __init__(self, toY, toX, cost):
        # 頂点(y, x) 最小コスト
        self.toY = toY
        self.toX = toX
        self.cost = cost

    def __lt__(self, other):
        return self.cost < other.cost

    def __gt__(self, other):
        # other.cost < self.cost
        return not self.__le__(other)

    def __eq__(self, other):
        # self.cost == other.cost
        return 0


def dijkstra(lst, ary):
    # ダイクストラ 所要コスト
    # コスト スタート地点
    ary[startY][startX] = 0
    # コスト 昇順
    # 追加 頂点 コスト
    que = [Edge(startY, startX, 0)]
    # 始点 行ったことある
    gone[startY][startX] = True
    while que:
        f = heappop(que)
        if ary[f.toY][f.toX] < f.cost:
            continue
        for i in range(len(lst[f.toY][f.toX])):
            t = lst[f.toY][f.toX][i]
            # 行ったことがない
            if not gone[t.toY][t.toX]:
                if ary[f.toY][f.toX] + t.cost < ary[t.toY][t.toX]:
                    ary[t.toY][t.toX] = ary[f.toY][f.toX] + t.cost
                    # 追加 頂点 最小コスト
                    heappush(que, Edge(t.toY, t.toX, ary[t.toY][t.toX]))
                    gone[t.toY][t.toX] = True
    return ary[goalY][goalX]


def f(pY, pX, nY, nX, mid):
    if field[nY][nX] == black:
        route[pY][pX].append(Edge(nY, nX, mid))
    else:
        route[pY][pX].append(Edge(nY, nX, 1))


def bisectionMethod(left, right):
    # Bisection Method
    # [left, right]
    # to narrow the range
    global cost, gone, route
    cost = [[MAX_T for j in range(W)] for i in range(H)]
    gone = [[False for j in range(W)] for i in range(H)]
    route = [[[] for j in range(W)] for i in range(H)]
    while (1 < abs(right - left)):
        mid = (left + right) // 2
        for y in range(H):
            for x in range(W):
                route[y][x] = []
                for k in range(4):
                    ny = y + dy[k]
                    nx = x + dx[k]
                    if ny < 0 or H <= ny\
                            or nx < 0 or W <= nx:
                        continue
                    # route 構築
                    f(y, x, ny, nx, mid)
                    # 初期化
                    cost[y][x] = MAX_T
                    # 行ったことがない
                    gone[y][x] = False
        # ダイクストラ 所要コスト
        ct = dijkstra(route, cost)
        # ちょうどTならば確定
        if T < ct:
            right = mid
        elif ct < T:
            left = mid
        else:
            left = mid
            break
    return left


def main():
    global H, W, T, field, startY, startX, goalY, goalX
    lines = stdin.readlines()
    H, W, T = map(int, lines[0].split())
    field = []
    for k, v in enumerate(lines[1:]):
        field.append(list(v.strip()))
        if S in v:
            startY = k
            startX = v.index(S)
        if G in v:
            goalY = k
            goalX = v.index(G)
    print(bisectionMethod(0, T))
    return


main()

