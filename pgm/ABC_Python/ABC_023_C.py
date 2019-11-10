from sys import stdin


def main():
    lines = stdin.readlines()
    R, C, K = map(int, lines[0].split())
    N = int(lines[1])
    r = [0] * R
    c = [0] * C
    rClm = [[] for i in range(R)]
    for i in range(N):
        row, column = map(lambda x: int(x) - 1, lines[i + 2].split())
        r[row] += 1
        c[column] += 1
        rClm[row].append(column)
    rcnt = [0] * R
    for i in range(R):
        rcnt[r[i]] += 1
    ccnt = [0] * C
    for i in range(C):
        ccnt[c[i]] += 1
    ans = 0
    # 飴の有る行
    for ri, clm in enumerate(rClm):
        if not len(clm):
            continue
        # 行 列 交差する点 飴有り 重複
        # 列の飴の数 = K - 行の飴の数 + 1
        num = K - r[ri] + 1
        # 列の飴の数 から 除外する数
        exclude = 0
        for ci in clm:
            if num <= 0:
                continue
            if c[ci] == num:
                ans += 1
            elif c[ci] == num - 1:
                exclude += 1
        # 行 列 交差する点 飴無し
        # 列の飴の数 = K - 行の飴の数
        num -= 1
        if (num < 0):
            continue
        ans += ccnt[num]
        # 列の飴の数 から 除外する数 を引く
        ans -= exclude
    # 飴の無い行
    ans += rcnt[0] * ccnt[K]
    print(ans)
    return


main()

