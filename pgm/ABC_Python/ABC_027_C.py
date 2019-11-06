first = "Takahashi"
second = "Aoki"


def f1(x):
    return 2 * x + 1


def f2(x):
    return 2 * x


def main():
    N = int(input())
    # 深さ
    d = 0
    n = N
    while 0 < n:
        d += 1
        n //= 2
    x = 1
    # first 手番(True or False)
    turn = True
    # 向き(2x＋1 or 2x)
    f, s = (f1, f2) if d % 2 else (f2, f1)
    # シミュレート
    while x <= N:
        if turn:
            x = f(x)
        else:
            x = s(x)
        turn = not turn
    print(first if turn else second)
    return


main()

