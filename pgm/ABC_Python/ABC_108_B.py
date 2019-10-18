x1, y1, x2, y2 = map(int, input().split())

dx = x2 - x1
dy = y2 - y1

nx = x2
ny = y2

l = []

for i in range(2):
    dx, dy = -dy, dx

    nx = nx + dx
    ny = ny + dy

    l.append(nx)
    l.append(ny)

print(l[0], l[1], l[2], l[3])
