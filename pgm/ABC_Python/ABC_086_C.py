from sys import stdin

input = stdin.readline
lines = stdin.readlines

N = int(input())

txy = ((map(int, line.split())) for line in lines())


def main():
    pt = 0
    px = 0
    py = 0

    flg = False

    for t, x, y in txy:
        dt = t - pt - abs(x - px) - abs(y - py)
        # 余った時間が奇数 戻れない
        if dt < 0 or dt % 2 == 1:
            break

        pt = t
        px = x
        py = y
    else:
        # break しなかった 完走
        flg = True

    print("Yes" if flg else "No")
    return


main()
