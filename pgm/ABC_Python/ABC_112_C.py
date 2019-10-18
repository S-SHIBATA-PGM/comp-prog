import sys

N = int(input())

xn = []
yn = []
hn = []

for i in range(N):
    xi, yi, hi = map(int, input().split())

    xn.append(xi)
    yn.append(yi)
    hn.append(hi)

for Cx in range(101):
    for Cy in range(101):

        last = None
        flg = True

        for i in range(N):

            if 0 == hn[i]:
                continue

            H = abs(xn[i] - Cx) + abs(yn[i] - Cy) + hn[i]

            if H < 0:
                continue

            if last:
                if H != last:
                    flg = False
                    break

            last = H

        if not flg:
            continue

        for i in range(N):

            if 0 == hn[i]:
                h = abs(xn[i] - Cx) + abs(yn[i] - Cy)
                if h < H:
                    flg = False
                    break

        if not flg:
            continue

        print(Cx, Cy, H)
        sys.exit()
