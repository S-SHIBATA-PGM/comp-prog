N = int(input())

xn = [0] * N
yn = [0] * N
hn = [0] * N

for i in range(N):
    xi, yi, hi = map(int, input().split())
    xn[i] = xi
    yn[i] = yi
    hn[i] = hi

for Cx in range(101):
    for Cy in range(101):

        flg = True

        for i in range(N):
            if 0 == hn[i]:
                continue

            h = abs(xn[i] - Cx) + abs(yn[i] - Cy) + hn[i]

            if flg:
                H = h
                flg = False
            else:
                if (H != h):
                    flg = True
                    break

        if flg:
            continue

        for i in range(N):
            if 0 == hn[i]:
                h = abs(xn[i] - Cx) + abs(yn[i] - Cy)
                if h < H:
                    flg = True
                    break

        if flg:
            continue

        print(Cx, Cy, H)
        break

    if not flg:
        break
