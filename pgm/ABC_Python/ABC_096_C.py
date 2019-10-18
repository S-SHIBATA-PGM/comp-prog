# 下、右、上、左
dy = [1, 0, -1, 0]
dx = [0, 1, 0, -1]

H, W = map(int, input().split())
s = [input() for i in range(H)]


def main():
    for y in range(H):
        for x in range(W):

            if s[y][x] == '.':
                continue

            cnt = 0

            for k in range(4):
                ny = y + dy[k]
                nx = x + dx[k]

                if ny < 0 or H <= ny\
                        or nx < 0 or W <= nx\
                        or s[ny][nx] == '.':
                    continue

                cnt += 1

            if cnt == 0:
                print("No")
                return

    print("Yes")
    return


main()
