N = int(input())

xn = []
yn = []
hn = []

for i in range(N):
    xi, yi, hi = map(int, input().split())
    if hi:
        xn.append(xi)
        yn.append(yi)
        hn.append(hi)

if len(xn) == 1:
    print(xn[0], yn[0], hn[0])
else:
    for Cx in range(101):
        for Cy in range(101):

            last = None
            flg = False

            for i in range(len(xn)):
                H = abs(xn[i] - Cx) + abs(yn[i] - Cy) + hn[i]

                if H < 0:
                    continue
                if last:
                    if (H != last):
                        break

                last = H
            else:
                flg = True
                print(Cx, Cy, H)
                break

        if flg:
            break
