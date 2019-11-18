from collections import deque
from sys import stdin
X = "#"
C = 0
R = 0
c = []
# 下、右、上、左
dy = [1, 0, -1, 0]
dx = [0, 1, 0, -1]
gy = 0
gx = 0
sy = 0
sx = 0


read = stdin.read
readline = stdin.readline
readlines = stdin.readlines


class Point:
    def __init__(self, y, x, cost):
        self.y = y
        self.x = x
        self.cost = cost

    def __repr__(self, y, x, cost):
        return repr((self.y, self.x, self.cost))


def bfs(x, y, cost):
    # スタート地点をキューに入れる
    q = deque()
    q.append(Point(sy, sx, cost))
    # コスト初期化
    cost = [[-1] * C for i in range(R)]
    while q:
        p = q.popleft()
        py = p.y
        px = p.x
        pc = p.cost
        if gy == py and gx == px:
            # ゴールに到達出来た
            return cost[gy][gx]
        for k in range(4):
            ny = py + dy[k]
            nx = px + dx[k]
            nc = pc + 1
            if ny < 0 or R <= ny\
                    or nx < 0 or C <= nx\
                    or c[ny][nx] == X:
                # 行動範囲外
                continue
            # 次の地点を既に訪れた
            if cost[ny][nx] != -1:
                continue
            # 次の地点をキューに入れる
            q.append(Point(ny, nx, nc))
            # 次の地点のコスト
            cost[ny][nx] = nc


def main():
    global C, R, c, gy, gx, sy, sx
    R, C = map(int, readline().split())
    sy, sx = map(lambda x: int(x) - 1, readline().split())
    gy, gx = map(lambda x: int(x) - 1, readline().split())
    c = readlines()
    print(bfs(sy, sx, 0))
    return


main()

