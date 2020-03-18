NUM = 3
MAX_N = 100
def check(ty, yx, n):
    flg = False
    ty[yx[n]] += 1
    if NUM == ty[yx[n]]:
        flg = True
    return flg

def check_naname(nnm, y, x, n):
    flg = False
    if y[n] == x[n]:
        nnm[0] += 1
        if (NUM == nnm[0]):
            flg = True
    if y[n] == NUM - x[n] - 1:
        nnm[1] += 1
        if (NUM == nnm[1]):
            flg = True
    return flg

def main():
    y = [-1] * MAX_N
    x = [-1] * MAX_N
    for i in range(NUM):
        *A, = map(int, input().split())
        for j in range(NUM):
            A[j] -= 1
            y[A[j]] = i
            x[A[j]] = j
    N = int(input())
    tate = [0] * NUM
    yoko = [0] * NUM
    naname = [0] * 2
    flg = False
    for i in range(N):
        b = int(input())
        b -= 1
        if -1 == y[b]:
            continue
        flg = check(yoko, y, b)
        if flg:
            break
        flg = check(tate, x, b)
        if flg:
            break
        flg = check_naname(naname, y, x, b)
        if flg:
            break
    print("Yes" if flg else "No")
    return


main()
