def main():
    D, G, *pc = map(int, open(0).read().split())
    p = pc[::2]
    c = pc[1::2]
    ans = 1e9 + 7
    # 2 ** D - 1 まで
    for b in range(2 ** D):
        num = 0
        pnt = 0
        # コンプリートしない MAX
        x = None
        # 得点が高い方から
        for i in range(D - 1, -1, -1):
            # i 番目 の フラグ が 立っている
            if b >> i & 1:
                num += p[i]
                # コンプリートする
                pnt += c[i] + 100 * (i + 1) * p[i]
            elif x is None:
                x = i
        # コンプリート オール
        # または 既に 目標の 総合スコア に到達
        if x is None or G <= pnt:
            ans = min(ans, num)
        # コンプリートしない MAX で 目標の 総合スコア に到達
        elif -(-(G - pnt) // (100 * (x + 1))) < p[x]:
            ans = min(ans, num - (-(G - pnt) // (100 * (x + 1))))
    print(ans)
    return


main()
