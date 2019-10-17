W, H, N = map(int, input().split())

minx = 0
maxx = W
miny = 0
maxy = H

for i in range(N):
    x, y, a = map(int, input().split())

    if a == 1:
        minx = max(minx, x)
    elif a == 2:
        maxx = min(maxx, x)
    elif a == 3:
        miny = max(miny, y)
    else:
        maxy = min(maxy, y)

    ans = (maxx - minx) * (maxy - miny)

print(ans if minx < maxx and miny < maxy else 0)
