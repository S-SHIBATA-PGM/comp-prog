from sys import stdin


def dfs(s, p, P, i):
    # スイッチを順に見ていく
    if len(s) == i:
        return 1 if P == p else 0
    # 場合の数
    # そのスイッチを使用しなかった場合 + 使用した場合
    return dfs(s, p, P, i + 1) + dfs(s, p, P ^ s[i], i + 1)


def main():
    lines = stdin.readlines()
    N, M = map(int, lines[0].split())
    sn = [[int(j) for j in i.split()[1:]] for i in lines[1:-1]]
    pn = (int(i) for i in lines[-1].split())
    # s[スイッチ]
    # 二進法で表した数における各桁はそのスイッチを使用している電球
    s = [0] * N
    for i in range(M):
        for j in sn[i]:
            s[j - 1] |= (1 << i)
    # p
    # 二進法で表した数における各桁は電球
    # スイッチONの数 MOD 2 におけるゼロイチを二進法で表す
    # 一致する場合に 全ての電球が点灯
    p = 0
    for i, j in enumerate(pn):
        p |= (1 << i) if j == 1 else 0
    print(dfs(s, p, 0, 0))


main()
