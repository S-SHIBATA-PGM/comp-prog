# 下、右、上、左、右下、右上、左下、左上
dy = [1, 0, -1, 0, 1, -1, 1, -1]
dx = [0, 1, 0, -1, 1, 1, -1, -1]

H, W = map(int, input().split())
field = []

for i in range(H):
    field.append(list(input()))

for y in range(H):
    for x in range(W):

        if field[y][x] == '#':
            continue

        cnt = 0

        for k in range(8):
            ny = y + dy[k]
            nx = x + dx[k]

            if ny < 0 or H <= ny\
                    or nx < 0 or W <= nx:
                continue

            if field[ny][nx] == '#':
                cnt += 1

        field[y][x] = str(cnt)

for y in range(H):
    print("".join(field[y]))
