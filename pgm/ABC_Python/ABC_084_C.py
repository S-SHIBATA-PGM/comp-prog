N = int(input())

CSFn = [[int(j) for j in input().split()] for i in range(N - 1)]


def next(s):
    t = 0

    for Ci, Si, Fi in CSFn[s:]:
        # 始発
        if t < Si:
            t = Si

        # タイムラグ
        elif t % Fi:
            t += Fi - t % Fi

        # 列車の移動時間
        t += Ci

    return t


def main():
    # 出発駅
    for i in range(N - 1):
        t = next(i)
        print(t)

    print(0)

    return


main()
