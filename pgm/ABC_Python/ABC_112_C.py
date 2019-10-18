def main():
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
        return

    for Cx in range(101):
        for Cy in range(101):

            last = None

            for i in range(len(xn)):
                H = abs(xn[i] - Cx) + abs(yn[i] - Cy) + hn[i]

                if H < 0:
                    continue
                if last:
                    if (last != H):
                        break

                last = H
            else:
                print(Cx, Cy, H)
                return


main()
