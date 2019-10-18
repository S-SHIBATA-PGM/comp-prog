N = int(input())

An = sorted(map(int, input().split()))
Bn = sorted(map(int, input().split()))
Cn = sorted(map(int, input().split()))


def f(xn, yn, zn):
    tn = [0] * N
    num = 0
    j = N - 1

    for i in range(N - 1, -1, - 1):
        while 0 <= j and xn[i] < yn[j]:
            num += zn[j]
            j -= 1
        tn[i] = num

    return tn


def main():
    Zn = [1] * N

    Zn = f(Bn, Cn, Zn)
    Zn = f(An, Bn, Zn)

    print(sum(Zn))
    return


main()
