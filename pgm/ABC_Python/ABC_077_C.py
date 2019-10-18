N = int(input())

An = sorted(map(int, input().split()), reverse=True)
Bn = sorted(map(int, input().split()), reverse=True)
Cn = sorted(map(int, input().split()), reverse=True)


def f(xn, yn, zn):
    tn = [0] * N
    num = 0
    j = 0

    for i in range(N):
        while j <= N - 1 and xn[i] < yn[j]:
            num += zn[j]
            j += 1
        tn[i] = num

    return tn


def main():
    Zn = [1] * N

    Zn = f(Bn, Cn, Zn)
    Zn = f(An, Bn, Zn)

    print(sum(Zn))
    return


main()
