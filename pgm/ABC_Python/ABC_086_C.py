from sys import stdin

input = stdin.readline

N = int(input())

txy = [[int(j) for j in input().split()] for i in range(N)]


def main():
    pt = 0
    px = 0
    py = 0

    flg = False

    for t, x, y in txy:
        d = abs(x - px) + abs(y - py)
        dt = t - pt
        # 到達 あるいは 通過
        if d <= dt:
            # 距離と時間の偶奇が一致しない 戻れない
            if d % 2 != dt % 2:
                break
            else:
                pt = t
                px = x
                py = y
        # 到達しない
        else:
            break
    else:
        # break しなかった 完走
        flg = True

    print("Yes" if flg else "No")
    return


main()
