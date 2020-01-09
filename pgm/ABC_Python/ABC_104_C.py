def main():
    D, G, *pc = map(int, open(0).read().split())
    p = pc[::2]
    c = pc[1::2]
    # コンプリート
    comp = [c[i] + 100 * (i + 1) * p[i] for i in range(D)]

    def dfs(G, i):
        # G 総合スコア
        # i 問題 1-based indexing
        if i <= 0:
            # 目標の 総合スコア に到達しなかった
            return 1e9 + 7
        score = 0
        num = min(G // (100 * i), p[i - 1])
        if num == p[i - 1]:
            # コンプリートする
            score = comp[i - 1]
        else:
            # コンプリートしない
            score = 100 * i * num
        if score < G:
            # 目標の 総合スコア に到達しない時 さらに問題を解く
            num += dfs(G - score, i - 1)
        # 問題を解いた、解かなかったの最小
        return min(num, dfs(G, i - 1))
    print(dfs(G, D))


main()
